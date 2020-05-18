class AddDefaultToRecruitFunnel < ActiveRecord::Migration[6.0]
  def change
    change_column :recruits, :funnel_id, :bigint, default: 1
  end
end
