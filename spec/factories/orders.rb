FactoryBot.define do
  factory :order do
    total_price { 1.5 }
    status { "MyString" }
    association :customer
  end
end
