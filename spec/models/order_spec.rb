require 'rails_helper'

RSpec.describe Order, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it "is valid with a total_price and status" do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it "is invalid without customer" do
    item = FactoryBot.build(:order, customer:nil)
    item.valid?
    expect(item.errors[:customer]).to include("can't be blank")
  end
end
