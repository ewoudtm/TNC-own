class CreateProductNegotiations < ActiveRecord::Migration[5.0]
  def change
    create_table :product_negotiations do |t|
      t.references :products, foreign_key: true
      t.references :users, foreign_key: true
      t.text :single_bids, array: true, default: []
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
