class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    @store = Store.find(params[:store_id])

  end

  def create
    @product = Product.new(product_params)
    @product.store = Store.find(params[:store_id])

# <ActionController::Parameters {"utf8"=>"✓", "authenticity_token"=>"2flmkmqEZSoVWxCphyuzSUnLa1w+jjscV30jgBqeJoUP62eH3z9xOnmCtZ7qorx5fxp2T4Y3hHOof/JksT1hvQ==", "product"=><ActionController::Parameters {"description"=>"", "color"=>"", "size_ids"=>["", "1", "3", "5"], "qty"=>"", "price"=>""} permitted: false>, "commit"=>"Create Product", "controller"=>"products", "action"=>"create", "store_id"=>"1"} permitted: false>
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


  private

  def product_params
    params.require(:product).permit(:description, :color, :qty, :price, pictures: [], size_ids: [])
  end

end
