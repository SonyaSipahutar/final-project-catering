class MenuItem < ApplicationRecord
  belongs_to :category
  has_many :order_details
  validates :category, presence:true
  validates :name, presence:true, uniqueness:true
  validates :price, presence:true, comparison: {greater_than_or_equal_to: 0.01}
  validates :description, length: {maximum: 150}
end
