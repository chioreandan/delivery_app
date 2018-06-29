class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :authorize_admin
  def authorize_admin
    unless current_user&.admin?
      redirect_to root_path
    end
  end

end
