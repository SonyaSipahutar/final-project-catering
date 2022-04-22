FactoryBot.define do
  factory :menu_item do
    name { Faker::Food.dish  }
    price { 1.5 }
    description { "Makanan" }
    association :category
  end

  factory :invalid_menu_item, parent: :menu_item do
    name { nil  }
    price { nil }
    description { nil }
    category { nil }
  end

  
end
