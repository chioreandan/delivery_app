class LandingPagesController < ApplicationController
  skip_before_action :authorize_admin, only: [:home]

  def home
    @products = Product.all
  end

end
