# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subscriber do
    benefit_status "MyString"
    benefits "MyString"
    birth_date "2014-09-30"
    contacts "MyString"
    eligibility_begin_date "2014-09-30"
    employment_status "MyString"
    first_name "MyString"
    gender "MyString"
    group_or_policy_number "MyString"
    handicapped false
    last_name "MyString"
    maintenance_reason "MyString"
    maintenance_type "MyString"
    member_id "MyString"
    middle_name "MyString"
    relationship "MyString"
    ssn 1
    subscriber_number "MyString"
    substance_abuse false
    tobacco_use false
  end
end
