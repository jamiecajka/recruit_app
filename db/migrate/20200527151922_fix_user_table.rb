class FixUserTable < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :active, :string, default: "active"
    rename_column :users, :active, :status
  end
end
