class ProductSizesController < ApplicationController
  def update
    @product_size = ProductSize.find(params[:id])
    store = @product_size.product.store

    if @product_size.update(product_size_params)
      redirect_to store_path(store)
    else
      render 'products/update_quantity'
    end

  end


  private

  def product_size_params
    params.require(:product_size).permit(:quantity)
  end

end
