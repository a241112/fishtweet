FactoryBot.define do
  factory :tweet do
    type_name     { Faker::Food.sushi }
    datetime          { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    quantity_id   { Faker::Number.between(from: 1, to: 100) }
    size_id       { Faker::Number.between(from: 1, to: 100) }
    weather_id    { Faker::Number.between(from: 1, to: 4) }
    wind_id       { Faker::Number.between(from: 1, to: 10) }
    feed          { Faker::Food.sushi }
    address       { Faker::Address.city }
    association :user

    after(:build) do |tweet|
      tweet.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
