class DropRecruitsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :recruits
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
