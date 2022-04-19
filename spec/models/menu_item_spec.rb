require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:menu_item)).to be_valid
  end

  it "valid with a name, price and description" do
    expect(FactoryBot.build(:menu_item)).to be_valid
  end

end
