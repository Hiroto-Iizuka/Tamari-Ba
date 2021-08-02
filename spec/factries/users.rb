FactoryBot.define do
  factory :user do
    name { "sato" }
    encrypted_password { "password" }
    email { "sato@example.com" }
  end
end