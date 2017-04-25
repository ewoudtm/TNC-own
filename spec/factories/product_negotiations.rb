FactoryGirl.define do
  factory :product_negotiation do
    product { build (:product) }
    single_bids { build (:single_bid) }
    active false
    user { build (:user) }
  end
end
