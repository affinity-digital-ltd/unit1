FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    intro { Faker::Lorem.paragraph }
    body  { Faker::Lorem.paragraph(50) }
  end
end