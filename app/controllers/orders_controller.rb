class OrdersController < ApplicationController

  def create
  product = Product.find(params[:product_id])
  # find the product_size too
  sku = "#{params[:product_id]}-#{params[:product][:size]}"


  order  = Order.create!(product: product, product_sku: sku, amount: product.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: sku,
      images: [product.pictures[0].key],
      amount: product.price_cents,
      currency: 'eur',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order)
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)

  # Once the payment done, we need to reduce the quantity related to the product_size.sku
  end
end
