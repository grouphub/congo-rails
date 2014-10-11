# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    communication_number_one "MyString"
    integer "MyString"
    communication_type_one "MyString"
    communication_number_two 1
    communication_type "MyString"
  end
end
