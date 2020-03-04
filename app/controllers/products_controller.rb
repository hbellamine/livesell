class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    @store = Store.find(params[:store_id])

  end

  def create
    @product = Product.new(params_product)
     @product.store = Store.find(params[:store_id])

    if @product.save
      redirect_to store_path(@product.store_id)
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private

def params_product
params.require(:product).permit(:description, :color, :size, :qty, :price, pictures: [])
end


