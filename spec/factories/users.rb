FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    admin { false }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
