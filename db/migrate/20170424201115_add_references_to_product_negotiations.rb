class AddReferencesToProdNegs < ActiveRecord::Migration[5.0]
  def change
    add_reference :prod_negs, :product, foreign_key: true
    add_reference :prod_negs, :user, foreign_key: true
  end
end
