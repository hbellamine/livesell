class ProductShoesizesController < ApplicationController
  def update
    @product_shoesize = ProductShoesize.find(params[:id])
    store = @product_shoesize.product.store
    raise
    if @product_shoesize.update(product_shoesize_params)
      redirect_to store_path(store)
    else
      render 'products/update_quantity'
    end

  end

  def update_sizes
    raise

  end

  private

  def product_shoesize_params
    params.require(:product_shoesize).permit(:quantity)
  end

end
