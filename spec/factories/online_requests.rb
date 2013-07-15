# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :online_request do
    first_name { Faker::NameRU.first_name }
    last_name { Faker::NameRU.last_name }
    patronymic { Faker::NameRU.patronymic }
    phone { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    registration_address { Faker::Address.street_address }
    birth_date { rand(18..100).years.ago }
  end
end
