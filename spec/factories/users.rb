# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :users do
    email "MyString"
    password_digest "MyString"
    full_name "MyString"
  end
end
