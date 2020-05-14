class UpdateColumnNameSearches < ActiveRecord::Migration[6.0]
  def change
    change_column :searches, :recruit_id, :string
    rename_column :searches, :recruit_id, :name
  end
end
