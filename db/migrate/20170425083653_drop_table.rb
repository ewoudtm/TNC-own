class DropTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :single_bids
  end
end
