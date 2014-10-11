# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payer do
    name "MyString"
    tax_id 1
  end
end
