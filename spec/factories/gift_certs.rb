# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gift_cert do
    name "MyString"
    number 1
    value 1
    description "MyText"
    customer_id 1
    redeemed ""
    date_redeemed "2013-08-09"
  end
end
