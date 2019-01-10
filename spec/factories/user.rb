FactoryBot.define do
  factory :user do
    email
    password { "1*#{Faker::Lorem.characters(5)}" }
    admin { false }
  end
end
