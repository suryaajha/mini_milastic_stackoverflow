class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @questions = @user.questions
  end

  def profile
    @user = current_user
    @questions = @user.questions
    render 'show'
  end

  def test
    
  end

  private

  def users_params
    params.require(:user).permit(:name, :username, :email, :password_dig, :bio)
  end
end
