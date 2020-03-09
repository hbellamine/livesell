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
      redirect_to store_product_updatequantities_path(@store,@product)

      #redirect_to store_path(@product.store_id)
    else
      raise
      render :new
    end

  end

  def updatequantity
    @store = Store.find(params[:store_id])
    @product = Product.find(params[:product_id])
    @product_sizes = @product.product_sizes

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

  def product_params
    params.require(:product).permit(:description, :price, pictures: [], size_ids: [], color_ids: [], shoesize_ids: [])
  end

end
