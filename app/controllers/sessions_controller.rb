class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
     @session = Session.new(params_session)
     @session.user_id = current_user.id
         if @session.save
      redirect_to sessions_path
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
end

private

def params_session
  params.require(:session).permit(:title, :date, :starttime, :productscategory, :state, :photo)
end

