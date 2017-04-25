FactoryGirl.define do
  factory :product do
    user_id 1
    title "MyString"
    start_price 1
    image "testimage.jpg"
    description "Test"
    size "L"
  end
end
