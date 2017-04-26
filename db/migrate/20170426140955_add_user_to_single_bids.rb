class AddUserToSingleBids < ActiveRecord::Migration[5.0]
  def change
    add_reference :single_bids, :user, foreign_key: true
  end
end
