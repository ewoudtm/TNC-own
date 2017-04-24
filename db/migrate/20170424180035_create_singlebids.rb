class CreateSinglebids < ActiveRecord::Migration[5.0]
  def change
    create_table :singlebids do |t|
      t.integer :price
      t.boolean :counter_offer
      t.boolean :accepted, default: false
      t.references :product_negotiations, foreign_key: true


      t.timestamps
    end
  end
end
