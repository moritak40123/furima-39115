FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    prefecture_id { Faker::Number.between(from: 2, to: 3) }
    city { Faker::Name.initials(number: 2) }
    address { '1-1' }
    building { Faker::Name.initials(number: 2) }
    phone { '09011111111' }
    token {"tok_abcdefghijk00000000000000000"}
  end
end
