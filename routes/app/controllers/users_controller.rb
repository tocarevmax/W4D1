class UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def create
    user = User.new(user_params)     #params[:user].permit(:name, :email)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entry
    # render json: params
    end
  end

  def new

  end

  def update
    @user = User.find_by(id: params[:id])
    if @user
      @user.update(user_params)
      render json: @user
    else
      render plain: 'user does not exist'
    end

  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render json: @user
    else
      render plain: "user not found"
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user
      @user.delete
      render json: @user
    else
      render plain: "user doesn't exist"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
    # params[:user].permit(:name, :email)
  end
end
