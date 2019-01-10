FactoryBot.define do
  factory :post do
    title { "Should we #{Faker::Lorem.sentence.gsub(/\.$/, '?')}" }
    text { "Text #{Faker::Lorem.sentence.gsub(/\.$/, '?')}" }
  end
end
