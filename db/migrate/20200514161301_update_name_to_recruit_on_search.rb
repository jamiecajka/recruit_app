class UpdateNameToRecruitOnSearch < ActiveRecord::Migration[6.0]
  def change
    change_column :searches, :name, 'bigint USING CAST(name AS bigint)'
    rename_column :searches, :name, :recruit_id
  end
end
