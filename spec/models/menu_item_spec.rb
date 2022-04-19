require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:menu_item)).to be_valid
  end

  it "is valid with a name, price and description" do
    expect(FactoryBot.build(:menu_item)).to be_valid
  end

  it "is invalid without name" do
    item = FactoryBot.build(:menu_item, name:nil)
    item.valid?
    expect(item.errors[:name]).to include("can't be blank")
  end

  it "is invalid without price" do
    item = FactoryBot.build(:menu_item, price:nil)
    item.valid?
    expect(item.errors[:price]).to include("can't be blank")
  end

end
