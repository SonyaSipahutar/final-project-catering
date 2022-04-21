FactoryBot.define do
  factory :category do
    category_name { "MyString" }
  end
  
  factory :invalid_category, parent: :category do
    category_name { nil }
  end
end
