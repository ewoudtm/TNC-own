class RemoveReferencesFromProdNegs < ActiveRecord::Migration[5.0]
  def change
    remove_column :prod_negs, :products_id, :integer
    remove_column :prod_negs, :users_id, :integer
  end
end
