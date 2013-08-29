# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :package do
    name "MyString"
    description "MyText"
    count 1
    date_purchased "2013-08-29"
    date_completed "2013-08-29"
  end
end
