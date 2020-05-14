class RenameSearchColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :searches, :year, :year_id
    rename_column :searches, :level, :level_id
    rename_column :searches, :funnel, :funnel_id
    rename_column :searches, :position, :position_id
  end
end
