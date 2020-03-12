class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
        @livecasts = Livecast.all

        @showcontainer = true

  end
end
