# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :visit do
    visit_notes "MyText"
    date_of_visit "2013-04-06"
    customer_id 1
  end
end
