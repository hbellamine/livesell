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
  if params[:livecast] != nil
    @livecast = Livecast.find(params[:livecast])
    @selection = Selection.where(livecast_id: params[:livecast])
  end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
