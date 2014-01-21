# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :services_visit, :class => 'ServicesVisits' do
    service_id 1
    visit_id 1
  end
end
