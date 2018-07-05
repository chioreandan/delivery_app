class LandingPagesController < ApplicationController
  skip_before_action :authorize_admin, only: [:home]
  skip_before_action :require_login

  def home
    @products = Product.all
  end

end
