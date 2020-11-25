FactoryBot.define do
  factory :user do
    name                  { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.unique.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    prefecture_id         { Faker::Number.between(from: 1, to: 47) }
  end
end
