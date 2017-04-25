class ProductNegotiation < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :single_bids
end
