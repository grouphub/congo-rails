# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coordination_of_benefitse do
    group_or_policy_number "MyString"
    payer_responsibility "MyString"
    status "MyString"
  end
end
