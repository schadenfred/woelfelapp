FactoryGirl.define do
  factory :user do
    email
    password "password"
  end

  sequence(:email) do |n|
    "user#{n}@test.com"
  end
end
