class WelcomeController < ApplicationController
  def index
        @livecasts = Livecast.all

    if Store.where(user_id: current_user.id).empty?
      @store = Store.new(user_id: current_user.id)
      @store.save
    end

    storearr = Store.where(user_id: current_user)
    @store = storearr[0]
    @store.save
  end
end
