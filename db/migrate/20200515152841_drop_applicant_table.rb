class DropApplicantTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :applicants
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
