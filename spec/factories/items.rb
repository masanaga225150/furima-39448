FactoryBot.define do
  factory :item do
    product_name { 'test' }
    description { 'test' }
    category_id { Faker::Number.between(from: 2, to: 11) }
    condition_id { Faker::Number.between(from: 2, to: 7) }
    shipping_fee_id { Faker::Number.between(from: 2, to: 3) }
    delivery_prefecture_id { Faker::Number.between(from: 2, to: 48) }
    shipping_duration_id { Faker::Number.between(from: 2, to: 4) }
    price { Faker::Number.between(from: 300, to: 9_999_999) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/apple-touch-icon.png'), filename: 'item-image')
    end
  end
end
