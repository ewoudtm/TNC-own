class AddDetailsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_type, :string
    add_column :products, :original_price, :integer
  end
end
