FactoryBot.define do
  factory :order_detail do
    quantity { 1.5 }
    price_per_item { 1.5 }
    association :order
    association :menu_item
  end
end
