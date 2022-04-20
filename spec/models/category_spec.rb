require 'rails_helper'

RSpec.describe Category, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it "is valid with a category name" do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it "is invalid without category name" do
    item = FactoryBot.build(:category, category_name:nil)
    item.valid?
    expect(item.errors[:category_name]).to include("can't be blank")
  end
end
