class SessionsController < ApplicationController
  def index
    @sessions = Session.All
  end

  def new
    @session = Session.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
