class AddReferencesToProductNegotiations < ActiveRecord::Migration[5.0]
  def change
    add_reference :product_negotiations, :product, foreign_key: true
    add_reference :product_negotiations, :user, foreign_key: true
  end
end
