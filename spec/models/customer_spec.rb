require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "has valid factory" do
    expect(FactoryBot.build(:customer)).to be_valid
  end
  it "has valid with name and email" do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it "has invalid without email" do
    customer = FactoryBot.build(:customer, email:nil)
    customer.valid?
    expect(customer.errors[:email]).to include("can't be blank")
  end

  it "has invalid if email format was wrong" do
    customer = FactoryBot.build(:customer, email: "halo@gmail")
    customer.valid?
    expect(customer.errors[:email]).to include("is invalid")
  end
end
