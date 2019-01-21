FactoryBot.define do
  factory :product do
    title {Faker::Lorem.unique.word}
    price {Faker::Number.decimal(2)}
    inventory_count {Faker::Number.number(2)}
  end
end
