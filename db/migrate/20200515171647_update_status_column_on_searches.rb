class UpdateStatusColumnOnSearches < ActiveRecord::Migration[6.0]
  def change
    change_column :searches, :status, 'bigint USING CAST(status AS bigint)'
    rename_column :searches, :status, :status_id
  end
end
