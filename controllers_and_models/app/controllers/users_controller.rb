class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render 'new'
  end

  def create
    # render json: params[:name]
    User.create(name: params[:name])
    redirect_to '/users' 
  end

  def show

    render json: User.find(params[:id]) 
  end

  def edit
    @user = User.find(params[:id]) 
    render 'edit'
  end

  def update
    @user = User.find(params[:id])
    @user.update(name:params[:name])
    @user.save
    redirect_to '/users'
  end

  def total
    render json: User.count
  end
end
