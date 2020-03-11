class OrdersController < ApplicationController

  def index
    @livecasts = Livecast.where(user_id: current_user)
    @orders = Order.all
  end


  def create
  product = Product.find(params[:product_id])
  livecast = Livecast.find(params[:livecast_id])
  sellerid = livecast.user_id
  sellername = "#{User.find(sellerid).first_name} - #{User.find(sellerid).last_name}"


  # find the product_size too
  sku = "#{params[:product_id]}-#{params[:product][:size]}"

  if product.kind == 'Clothes'
    size = Size.find(params[:product][:size])
    @productsize = ProductSize.where(sku: sku)
    @productsize[0].quantity -= 1
    @productsize.update(quantity: @productsize[0].quantity)
    livecast.earning += product.price_cents/100
    livecast.update(earning: livecast.earning)
    description = "Size - #{size.name}"
  elsif product.kind =='Shoes'
    size = Shoesize.find(params[:product][:size])
    @productsize = ProductShoesize.where(sku: sku)
    @productsize[0].quantity -= 1
    @productsize.update(quantity: @productsize[0].quantity)
    livecast.earning += product.price_cents/100
    livecast.update(earning: livecast.earning)
    description = "Size - #{size.name}"
  else
    size = Color.find(params[:product][:size])
    @productcolor = ProductColor.where(sku: sku)
    @productcolor[0].quantity -= 1
    @productcolor.update(quantity: @productcolor[0].quantity)
    livecast.earning += product.price_cents/100
    livecast.update(earning: livecast.earning)
    description = "Color - #{color.name}"
  end

  order  = Order.create!(product: product,livecast: livecast, product_sku: sku, amount: product.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: product.description,
      description: description,
      images: [ActiveStorage::Blob.service.url(product.pictures.first.key)],
      amount: product.price_cents,
      currency: 'eur',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order),
    metadata: {
      sku: sku,
      store_id: product.store_id,
      seller_id: sellerid,
      seller_name: sellername,
    }
  )

  order.update(checkout_session_id: session.id)

  redirect_to new_order_payment_path(order)

  # Once the payment done, we need to reduce the quantity related to the product_size.sku
  end

  def show
  @order = current_user.orders.find(params[:id])
  @product = Product.find(@order.product_id)
end

end
