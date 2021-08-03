FactoryBot.define do
  factory :road do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    user
  end
end