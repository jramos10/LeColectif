# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "anirudh.eka@gmail.com"
    password "Life"
    password_confirmation "Life"
    full_name "Anirudh Eka"
  end
end
