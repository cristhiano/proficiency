# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    name { Forgery('name').full_name }
    register_number { Forgery('basic').number }
    status { [0, 1].sample }
  end
end
