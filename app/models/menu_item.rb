class MenuItem < ApplicationRecord
    has_many :item_categories
    validates :name, presence:true, length: {maximum: 150}, uniqueness:true
    validates :price, presence:true, comparison: {greater_than_or_equal_to: 0.01}
end
