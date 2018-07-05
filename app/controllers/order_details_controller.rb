class OrderDetailsController < ApplicationController
  def new
  end

  private
    def order_details_params
      params.require(:order_detail).permit(:product_count)
    end

end
