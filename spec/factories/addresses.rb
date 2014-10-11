# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    line_one "MyString"
    line_two "MyString"
    city "MyString"
    county "MyString"
    postal_code 1
    state "MyString"
  end
end
