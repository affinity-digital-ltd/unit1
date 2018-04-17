FactoryBot.define do
  factory :comment do
    post
    name { Faker::Name.name }
    body { Faker::Lorem.paragraph }
  end
end