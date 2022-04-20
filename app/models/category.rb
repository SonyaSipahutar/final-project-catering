class Category < ApplicationRecord
  has_many :item_categories
  validates :category_name, presence:true
end
