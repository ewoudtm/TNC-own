class SingleBid < ApplicationRecord
  belongs_to :product_negotiation

  def self.createSingleBid(price)
      day = day.to_date

      new_singlebid = SingleBid.create(price: price)



end
