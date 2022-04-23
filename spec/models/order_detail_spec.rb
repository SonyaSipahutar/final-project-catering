require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:order_detail)).to be_valid
  end

  it "is valid with a price_per_item and quantity" do
    expect(FactoryBot.build(:order_detail)).to be_valid
  end

  it "is invalid without order" do
    item = FactoryBot.build(:order_detail, order:nil)
    item.valid?
    expect(item.errors[:order]).to include("can't be blank")
  end
end
