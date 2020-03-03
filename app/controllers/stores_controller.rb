class StoresController < ApplicationController
  def index
  end

  def new
  end


  def create
  end

  def show
    storearr = Store.where(user_id: current_user.id)
    @store = storearr[0]
    @products = Product.where(store_id: @store.id)
    @livecast = Livecast.where(id: params[:livecast_id])
    @selection = Selection.where(id: params[:livecast_id])

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
