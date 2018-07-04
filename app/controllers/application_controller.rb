class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include OrdersHelper

  before_action :authorize_admin
  before_action :require_login
  def authorize_admin
    unless current_user&.admin?
      redirect_to root_path
    end
  end

  def require_login
    unless current_user
      redirect_to root_path
    end
  end

end
