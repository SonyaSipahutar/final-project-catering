FactoryBot.define do
  categories=FactoryBot.create(:category)
  factory :menu_item do
    name { Faker::Food.dish  }
    price { 1.5 }
    description { "Makanan" }
    category { categories }
  end

  factory :invalid_menu_item, parent: :menu_item do
    name { nil  }
    price { nil }
    description { nil }
    category { nil }
  end
end
