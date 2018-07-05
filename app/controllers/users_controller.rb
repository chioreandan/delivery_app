class UsersController < ApplicationController
  skip_before_action :authorize_admin, only: [:new,:view_orders,:create]
  skip_before_action :require_login, only: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to root_path
    else
      render 'new'
    end
  end
  def view_orders
    @orders = current_user.orders
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
