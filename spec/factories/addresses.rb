# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    line1 "MyString"
    line2 "MyString"
    city "MyString"
    state "MyString"
    zip 1
    addressable_id 1
    addressable_type "MyString"
  end
end
