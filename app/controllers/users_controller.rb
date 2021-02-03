class UsersController < ApplicationController
  def home
    @user = User.find_by(id: session[:user_id])
    redirect_to '/login' unless @user.present?
  end
  
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:error] = "Try again!"
      redirect_to "/users/new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
