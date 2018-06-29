class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :category, presence: true, length: {maximum: 20}
  has_one_attached :image
end
