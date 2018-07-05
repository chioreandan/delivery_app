class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy
  has_many :products, through: :order_details

  scope :is_sent, ->{where(sent: true)}
  scope :is_not_sent, ->{where(sent: nil)}
  scope :is_processed, ->{where(processed: true)}
  scope :is_sent_not_processed, ->{where(sent: true, processed: nil)}
  scope :order_details_id, ->(order_id) { where(order_detail.id:product.order_details_id)}

  def total_price
    products.sum(:price).round(2)
  end

  def send_order
    toggle!(:sent)
  end

  def handle_order
    toggle!(:processed)
  end

end
