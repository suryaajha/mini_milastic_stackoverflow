class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = current_user
    render 'show'
  end

  def test
    
  end

  private

  def users_params
    params.require(:user).permit(:name, :username, :email, :password_dig, :bio)
  end
end
