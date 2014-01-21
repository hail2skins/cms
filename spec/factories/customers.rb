# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone 1
    business_id 1
    referred_by "MyString"
  end
end
