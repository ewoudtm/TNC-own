class Product < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :start_price, presence: true
end
