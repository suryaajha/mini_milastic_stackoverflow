class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(users_params)
    unless params[:user][:password] == params[:user][:password_conf]
      flash[:alert] = 'Passwords dont match!'
      redirect_to new_user_path and return
    end
    user.password_dig = params[:user][:password]
    if user.save
      flash[:notice] = 'You entered the world of ministackoverflow'
      redirect_to root_path
    else
      flash[:alert] = 'Something went wrong. Please enter correct details!'
      redirect_to new_user_path
    end
  end

  def show
    p new_user_registration_path.class
  end

  private

  def users_params
    params.require(:user).permit(:name, :username, :email, :password_dig, :bio)
  end
end
