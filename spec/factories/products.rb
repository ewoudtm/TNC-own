FactoryGirl.define do
  factory :product do
    # user { build (:user) }
    title "MyString"
    start_price 1
    image "testimage.jpg"
    description "Test"
    size "L"
  end
end
