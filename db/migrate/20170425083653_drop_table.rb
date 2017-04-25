class DropTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :singlebids
  end
end
