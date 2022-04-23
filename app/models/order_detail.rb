class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item
  validates :order, presence:true
end