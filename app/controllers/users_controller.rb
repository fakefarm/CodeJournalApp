class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:user_id])
  end

  def edit
  end

end