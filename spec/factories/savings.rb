FactoryGirl.define do
  factory :saving do
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
  end
end
