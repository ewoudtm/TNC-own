class AddImageConditionDescriptionSizeSoldUserToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image, :string
    add_column :products, :condition, :string
    add_column :products, :description, :text
    add_column :products, :size, :string
    add_column :products, :sold, :boolean
    add_reference :products, :user, foreign_key: true
  end
end
