class AddProductCountToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :product_count, :int
  end
end
