class SingleBid < ApplicationRecord
  belongs_to :product_negotiation
  # 
  # def self.createSingleBid(price, product_negotiation_id)
  #         new_singlebid = SingleBid.create(price: price, product_negotiation_id: product_negotiation_id)
  #
  #   end

end
