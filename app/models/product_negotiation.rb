class ProductNegotiation < ApplicationRecord
  belongs_to :products
  belongs_to :users
  has_many :single_bids
end
