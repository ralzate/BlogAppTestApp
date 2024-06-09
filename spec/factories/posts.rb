FactoryBot.define do
  factory :post do
    title { Faker::Book.title }
    body { Faker::Lorem.paragraph }
    published_at { DateTime.now }
    association :user
  end
end