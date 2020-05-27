class FixYearTable < ActiveRecord::Migration[6.0]
  def change
    change_column :years, :active, :string, default: "active"
    rename_column :years, :active, :status
  end
end
