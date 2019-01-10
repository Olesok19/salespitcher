FactoryBot.define do
  factory :group do
    group_name { "Group #{Faker::Lorem.sentence.gsub(/\.$/, '?')}" }
  end
end
