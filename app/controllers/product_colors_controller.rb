class ProductColorsController < ApplicationController
  def update
    @product_color = ProductColor.find(params[:id])
    store = @product_color.product.store
    raise
    if @product_color.update(product_color_params)
      redirect_to store_path(store)
    else
      render 'products/updatecolorsquantity'
    end

  end

  def update_sizes
    raise

  end

  private

  def product_color_params
    params.require(:product_color).permit(:quantity)
  end

end
