class ProductsController < ApplicationController

  def index
  end

  def new
    @store = Store.find(params[:store_id])
    @product = Product.new
  end

  def create
    @store = Store.find(params[:store_id])
    @product = Product.new(product_params)
    @product.store = Store.find(params[:store_id])

    if @product.save
      if (@product.kind == 'Clothes')
        redirect_to store_product_update_quantity_path(@store,@product)
      elsif (@product.kind == 'Shoes')
        redirect_to store_product_update_shoesquantity_path(@store,@product)
      else
        redirect_to store_product_update_colorsquantity_path(@store,@product)

      end
    else
      raise
        render :new
    end

  end

  def updatecolorsquantity
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:product_id])
    @product_colors = @product.product_colors
    @product_colors.each do |productcolor|
      sku = "#{productcolor.product_id}-#{productcolor.color_id}"
      product_colors.update(sku: sku)
    end

  end

  def updateshoesquantity
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:product_id])
    @product_shoesizes = @product.product_shoesizes
    @product_shoesizes.each do |productsize|
      sku = "#{productsize.product_id}-#{productsize.shoesize_id}"
      productsize.update(sku: sku)
    end
  end

  def updatequantity
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:product_id])
    @product_sizes = @product.product_sizes
    @product_sizes.each do |productsize|
      sku = "#{productsize.product_id}-#{productsize.size_id}"
      productsize.update(sku: sku)
    end

  end

  def update_colors
    array = []
    @product = Product.find(params[:product_id])
    @product.colors.each do |color|
      product_color = ProductColor.find(params["product_color-#{color.name}"])
      product_color.quantity = params["#{color.name}"].to_i
      product_color.save
    end
    redirect_to store_path(@product.store)
  end


    def update_shoesizes
    array = []
    @product = Product.find(params[:product_id])
    @product.shoesizes.each do |shoesize|
      product_shoesize = ProductShoesize.find(params["product_shoesize-#{shoesize.name}"])
      product_shoesize.quantity = params["#{shoesize.name}"].to_i
      product_shoesize.save
    end
    redirect_to store_path(@product.store)
  end


  def update_sizes
    array = []
    @product = Product.find(params[:product_id])
    @product.sizes.each do |size|
      product_size = ProductSize.find(params["product_size-#{size.name}"])
      product_size.quantity = params["#{size.name}"].to_i
      product_size.save
    end
    redirect_to store_path(@product.store)
  end

  def edit
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private

  def fetch_sizes

  end

  def product_params
    params.require(:product).permit(:description, :kind, :price, pictures: [], size_ids: [], color_ids: [], shoesize_ids: [])
  end

end
