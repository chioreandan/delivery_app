class LandingPagesController < ApplicationController

  def home
    @products = Product.all
  end

end
