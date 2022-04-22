FactoryBot.define do
  factory :category do
    category_name { "Ayam" }
  end
  
  factory :invalid_category, parent: :category do
    category_name { nil }
  end
end
