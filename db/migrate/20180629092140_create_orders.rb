class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.boolean :sent
      t.boolean :processed
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :orders, [:user_id, :created_at]
  end
end
