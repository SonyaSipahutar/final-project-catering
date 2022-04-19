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

  it "is invalid with a duplicate name" do
    item = FactoryBot.create(:menu_item, name: 'Pizza')
    item2 = FactoryBot.build(:menu_item, name: 'Pizza')
    item2.valid?
    expect(item2.errors[:name]).to include("has already been taken")
  end

  it "is invalid with a price less than 0.01" do
    item = FactoryBot.build(:menu_item, price: 0.001)
    item.valid?
    expect(item.errors[:price]).to include("must be greater than or equal to 0.01")
  end

  it "is invalid with length of name more than 150" do
    item = FactoryBot.build(:menu_item, name: 'a'*151)
    item.valid?
    expect(item.errors[:name]).to include("is too long (maximum is 150 characters)")
  end

end
