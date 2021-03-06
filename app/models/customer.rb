class Customer < ApplicationRecord
  has_many :orders
  validates :email, presence:true
  validates_format_of :email, 
  :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[c][o][m]\z/
end
