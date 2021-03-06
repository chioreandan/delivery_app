class OrdersController < ApplicationController
  skip_before_action :authorize_admin, only: [:show, :new,:create,:add_product, :cart,
                                              :remove_product, :order_send]

  def new
  end

  def create
    @order = current_user.orders.new
    @order.save
  end

  def index
    @orders = Order.not_processed
  end

  def show
    @order = Order.find(params[:id])
  end

  def add_product
    @product = Product.find(params[:id])

    if current_user.open_orders?
      order = current_user.orders.not_sent.last
    else
      order = Order.create(user: current_user)
    end

    order.products.push(@product)
    redirect_to request.referrer
  end

  def cart
    if current_user.open_orders?
      @order = current_user.orders.not_sent.last
    else
      redirect_to root_path
    end
  end

  def remove_product
    order = current_user.orders.not_sent.last
    @product = order.products.find(params[:id])
    order.products.destroy(@product)
    redirect_to cart_path
  end

  def order_send
    order = current_user.orders.not_sent.last
    order.send_order
  end

  def order_handle
    order = Order.find(params[:id])
    order.handle_order
    redirect_to orders_path
  end

end
