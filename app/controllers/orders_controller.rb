class OrdersController < ApplicationController
  skip_before_action :authorize_admin, only: [:show, :new,:create,:add_product]

  def new
  end

  def create
    @order=current_user.orders.new
  end


  def index
    @orders = Order.all.is_sent
  end

  def cart_index
    add_product @product
    @order_items=current_order.products
  end

  def show
    @order = Order.find(params[:id])
  end

  def add_product
    @product = Product.find(params[:order_id])
    current_order.products.push(@product)
    redirect_to root_path
  end

end
