# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dependant do
    first_name "MyString"
    middle_name "MyString"
    last_name "MyString"
    ssn 1
    birth_date "2014-09-30"
    gender "MyString"
  end
end
