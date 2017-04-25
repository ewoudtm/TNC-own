FactoryGirl.define do
  factory :product do
    user "User"
    title "MyString"
    start_price 1
    image "testimage.jpg"
    description "Test"
    size "L"
  end
end
