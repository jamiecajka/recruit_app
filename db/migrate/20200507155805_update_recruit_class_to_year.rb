class UpdateRecruitClassToYear < ActiveRecord::Migration[6.0]
  def chagne
    rename_column :recruits, :class_id, :year_id
  end
end
