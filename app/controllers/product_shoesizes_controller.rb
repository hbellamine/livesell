class ProductShoesizesController < ApplicationController
  def update
    @product_shoesize = ProductShoesize.find(params[:id])

    @product_shoesize.sku = `#{@product_shoesize.product.id} - #{@product_shoesize.size}`
    store = @product_shoesize.product.store
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
