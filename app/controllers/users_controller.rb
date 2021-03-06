class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/dashboard', notice: "You're signed up!"
    else
      render "new"
      flash[:notice] = "Form is invalid"
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path
    else
      flash[:error] = "Something went wrong."
      redirect_to user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
