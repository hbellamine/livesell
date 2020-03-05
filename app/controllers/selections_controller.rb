class SelectionsController < ApplicationController
  def index
  end

  def new

  end


  def create
  end

  def add
    if @selection == nil
      @selection = Selection.new
    end

    @selection.product_id = params[:product_id]
    @selection.user_id = current_user.id


    @livecast = Livecast.find(params[:livecast_id])

    @selection.livecast_id = @livecast.id

    if  @selection.save
      redirect_to request.referrer, notice: "product added to the livecast"
    else
      raise
    end




  end

  def edit
  end

  def show
    @selection = Selection.where(params[:livecast_id])
  end


  def update
  end

  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy
    redirect_to request.referrer, notice: "product deleted from the selection"

  end
end
