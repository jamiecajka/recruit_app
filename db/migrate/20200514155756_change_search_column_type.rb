class ChangeSearchColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :searches, :year_id, 'bigint USING CAST(year_id AS bigint)'
    change_column :searches, :level_id, 'bigint USING CAST(level_id AS bigint)'
    change_column :searches, :level_id, 'bigint USING CAST(level_id AS bigint)'
    change_column :searches, :position_id, 'bigint USING CAST(position_id AS bigint)'
  end
end
