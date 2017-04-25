class CreateSingleBids < ActiveRecord::Migration[5.0]
  def change
    create_table :single_bids do |t|
      t.references :product_negotiation, foreign_key: true
      t.integer :price
      t.boolean :counter_offer, default: false
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
