class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :category, presence: true, length: {maximum: 20}
  has_one_attached :image
  has_many :order_details, dependent: :destroy
  has_many :orders, through: :order_details, dependent: :destroy
end
