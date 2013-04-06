# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :business do
    name "MyString"
    street_address "MyString"
    additional "MyString"
    city "MyString"
    state "MyString"
    zip_code 1
    description "MyText"
    user_id 1
  end
end
