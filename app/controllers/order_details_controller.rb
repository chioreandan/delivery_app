class OrderDetailsController < ApplicationController
  def new
  end

  def update
    @order_detail.assign_attributes(order_detail_params)

    respond_to do |format|
      if @order_detail.update(order_detail_params)
        redirect_to @order_detail, notice: "Order detail updated"
      else
        render :edit
      end
    end
  end

  private
    def order_details_params
      params.require(:order_detail).permit(:product_count)
    end

end
