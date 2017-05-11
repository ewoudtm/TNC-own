FactoryGirl.define do
  factory :single_bid do
    # prod_neg { build (:prod_neg) }
    price 1
    counter_offer false
    accepted false
  end
end
