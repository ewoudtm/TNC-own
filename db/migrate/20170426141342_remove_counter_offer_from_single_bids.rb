class RemoveCounterOfferFromSingleBids < ActiveRecord::Migration[5.0]
  def change
    remove_column :single_bids, :counter_offer, :boolean
  end
end
