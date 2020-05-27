class AddLastNameToRecruit < ActiveRecord::Migration[6.0]
  def change
    rename_column :recruits, :name, :first_name
    add_column :recruits, :last_name, :string
  end
end
