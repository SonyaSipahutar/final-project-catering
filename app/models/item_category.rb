class ItemCategory < ApplicationRecord
  belongs_to :menu_item
  belongs_to :category
  validates :category_id, presence: true
end
