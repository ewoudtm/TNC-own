class RemoveReferencesFromProductNegotiations < ActiveRecord::Migration[5.0]
  def change
    remove_column :product_negotiations, :products_id, :integer
    remove_column :product_negotiations, :users_id, :integer
  end
end
