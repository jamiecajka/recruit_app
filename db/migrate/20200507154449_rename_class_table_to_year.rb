class RenameClassTableToYear < ActiveRecord::Migration[6.0]
  def change
    rename_table :classes, :years
  end
end
