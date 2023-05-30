FactoryBot.define do
  factory :item do
    item_name          { Faker::Name.initials(number: 2) }
    price              { Faker::Commerce.price(range: 300..9_999_999, as_string: true) }
    delivery_charge_id { Faker::Number.between(from: 2, to: 3) }
    profile            { Faker::Lorem.sentence }
    category_id        { Faker::Number.between(from: 2, to: 11) }
    condition_id       { Faker::Number.between(from: 2, to: 7) }
    prefecture_id      { Faker::Number.between(from: 2, to: 48) }
    ship_date_id       { Faker::Number.between(from: 2, to: 4) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
