# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "Art"
    last_name "Mills"
    email "art@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
