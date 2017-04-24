class ChangeSoldDefaultToFalseToProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :sold, :boolean, default: false
  end
end
