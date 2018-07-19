FactoryBot.define do
  factory :link do
    sequence(:code) { |n| "#{('a'..'z').to_a.sample(5).join}#{n}" }
    url { Faker::Internet.url }
  end
end
