# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :benefit do
    begin_date "2014-09-30"
    benefit_type "MyString"
    coordination_of_benefits "MyString"
    late_enrollment false
    maintenance_type "MyString"
  end
end
