class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy
  has_many :products, through: :order_details

  scope :is_sent, ->{where(sent: true)}
  scope :is_not_sent, ->{where(sent: nil)}
  scope :is_processed, ->{where(processed: true)}
  scope :is_sent_not_processed, ->{where(sent: true, processed: nil)}

  def total_price
    price=0
    self.products.each do |product|
      price +=product.price
    end
    return price.round(2)
  end

end
