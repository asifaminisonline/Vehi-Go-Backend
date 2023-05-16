class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_action :set_user, only:[:show, :destroy]

  #Get /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  #GET /users/{username}
  def show
    render json: @user, status: :ok
  end

  def new
    @user = User.new
  end

  # create a new user  POST /users
  def create 
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: {errors: @users.errors.full_messages}, status: :unprocessable_entity
    end
  end

  #Delete a user
  def destroy
    @user.destroy
  end

  #Update a user
  def update
    unless @user.update(user_params)
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
  end


  def user_params
    params.permit(:username, :email, :password)
  end
   
  def set_user
    @user = User.find(params[:id])
  end
end
