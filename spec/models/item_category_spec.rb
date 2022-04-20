require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  it "is invalid without category_id" do
    item = FactoryBot.create(:menu_item)
    itemcategory = ItemCategory.new(
      menu_item_id:item.id,
      category_id:nil)
    
    itemcategory.valid?
    
    expect(itemcategory.errors[:category_id]).to include("can't be blank")
  end
end
