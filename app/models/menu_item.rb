class MenuItem < ApplicationRecord
  has_many :item_categories
  validates :name, presence:true, uniqueness:true
  validates :price, presence:true, comparison: {greater_than_or_equal_to: 0.01}
  validates :description, length: {maximum: 150}
end
