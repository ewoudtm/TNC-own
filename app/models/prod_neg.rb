class ProdNeg < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :single_bids

  def self.get_bids_from_current_negotiation(all_bids, params)

    select_bids = all_bids.select do |bid|
      bid.prod_neg_id == params[:id].to_i
    end

    return select_bids
  end

  def self.setup_profile
    debugger
  end
end
