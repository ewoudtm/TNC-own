FactoryGirl.define do
  factory :prod_neg do
    product { build (:product) }
    # single_bids { build (:single_bid) }
    active false
    user { build (:user) }
  end
end
