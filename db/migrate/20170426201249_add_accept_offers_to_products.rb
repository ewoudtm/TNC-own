class AddAcceptOffersToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :accept_offers, :boolean, default: false
  end
end
