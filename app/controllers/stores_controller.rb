class StoresController < ApplicationController
  def index
  end

  def new
    Store.new

  end


  def create

  end

  def show
    if Store.where(user: current_user).empty?
          @store = Store.create(user: current_user)
          storearr = Store.where(user_id: current_user.id)
          @store = storearr[0]
          @products = Product.where(store_id: @store.id)
        if params[:livecast] != nil
          @livecast = Livecast.find(params[:livecast])
          @selection = Selection.where(livecast_id: params[:livecast])
        end
    else
          storearr = Store.where(user_id: current_user.id)
          @store = storearr[0]
          @products = Product.where(store_id: @store.id)
        if params[:livecast] != nil
          @livecast = Livecast.find(params[:livecast])
          @selection = Selection.where(livecast_id: params[:livecast])
        end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
