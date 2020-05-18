class AllowNullOnLevelIdOnRecruit < ActiveRecord::Migration[6.0]
  def change
    change_column_null :recruits, :level_id, true
  end
end
