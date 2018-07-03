module OrdersHelper
  def is_processed?(order)
    order.processed.nil?
  end
  def log_order(order)
    session[:order_id] = order.id
  end

  def current_order
    if !session[:order_id].nil?
      current_user.orders.find(session[:order_id])
    else
      current_user.orders.create!
    end
  end

end
