class DropCnoteTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :cnotes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
