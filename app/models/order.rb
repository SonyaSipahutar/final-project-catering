class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details
  validates :customer, presence:true
end
