FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    intro { Faker::Lorem.paragraph }
    body  { Faker::Lorem.paragraph(50) }

    factory :post_with_comments, parent: :post do
      after :create do |post|
        create_list :comment, 3, post: post
      end
    end
  end
end