class RenameStatusesTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :statuses_tables, :statuses
  end
end
