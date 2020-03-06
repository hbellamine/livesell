class LivecastsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @livecasts = Livecast.all
  end

  def new
    @livecast = Livecast.new
  end

  def create
    @livecast = Livecast.new(params_livecast)
    @livecast.user_id = current_user.id

    if Store.where(user: current_user).empty?
      @store = Store.create(user: current_user)
    else
      @store = current_user.store
    end

    @livecast.store = @store

    if @livecast.save
      redirect_to usermylivecasts_path, notice: "Livecast created"
    else
      p @livecast.errors.messages
      render :new
    end
  end

  def show
    @livecast = Livecast.find(params[:id])
    @selection = Selection.where(livecast: @livecast)
  end

  def get_fb_id
    @livecast = Livecast.find(params[:id])
  end

  def mylivecasts
    @livecasts = Livecast.where(user_id: current_user)

    if Store.where(user_id: current_user.id).empty?
      @store = Store.new(user_id: current_user.id)
      @store.save
    end

    storearr = Store.where(user_id: current_user)
    @store = storearr[0]
    @store.save
  end




  def edit
  end

  def update
    @livecast = Livecast.find(params[:id])
    @livecast.confirmed = true
    if @livecast.update(params_livecast_url)

      redirect_to livecast_path(@livecast)
    else
      p @livecast.errors
      render :mylivecasts
    end

  end

  def destroy
    livecast = Livecast.find(params[:id])
    Selection.where(livecast_id: livecast.id).destroy_all
    livecast.destroy
    redirect_to usermylivecasts_path
  end

  private

  def params_livecast
    params.require(:livecast).permit(:title, :date, :start_time, :category, :mode, :picture)
  end

  def params_livecast_url
    params.require(:livecast).permit(:title, :date, :start_time, :category, :mode, :picture, :url, :confirmed)
  end

end

