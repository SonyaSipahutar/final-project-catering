FactoryBot.define do
  factory :menu_item do
    name {Faker::Food.dish}
    price { 1.5 }
    description {"Makanan"}
  end
end
