# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    name "MyString"
    description "MyString"
    cost 1
    business_id 1
  end
end
