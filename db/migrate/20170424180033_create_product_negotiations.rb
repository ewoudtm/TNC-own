class CreateProductNegotiations < ActiveRecord::Migration[5.0]
  def change
    create_table :product_negotiations do |t|
      t.references :products, foreign_key: true
      t.references :users, foreign_key: true
      t.array :single_bids
      t.boolean :active

      t.timestamps
    end
  end
end
