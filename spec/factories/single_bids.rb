FactoryGirl.define do
  factory :single_bid do
    product_negotiation nil
    price 1
    counter_offer false
    accepted false
  end
end
