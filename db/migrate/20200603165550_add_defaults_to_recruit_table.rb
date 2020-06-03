class AddDefaultsToRecruitTable < ActiveRecord::Migration[6.0]
  def change
    change_column :recruits, :funnel_id, :bigint, default: 7
    change_column :recruits, :level_id, :bigint, default: 4
  end
end
