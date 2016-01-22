# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name { Forgery('name').company_name }
    description { Forgery('lorem_ipsum').characters }
    status { [0, 1].sample }
  end
end
