class LandingPagesController < ApplicationController

  def home
    @products = Product.paginate(:page=>params[:page], :per_page =>4)
  end

end
