# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :benefits_coordination do
    group_or_policy_number "MyString"
    payer_responsibility "MyString"
    status "MyString"
  end
end
