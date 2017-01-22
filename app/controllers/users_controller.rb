class UsersController < ApplicationController
  def index
    render 'index'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
  end

  def update
  end
end
