FactoryBot.define do
  factory :article do
    user { create(:user) }
    title { Faker::Beer.name }
    description { Faker::Lorem.sentence }
    body { Faker::Internet.email }
  end
end
