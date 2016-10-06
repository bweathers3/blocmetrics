FactoryGirl.define do
  factory :registered_application do
    name { Faker::Company.name }
    url { Faker::Internet.url }
    user nil
  end
end
