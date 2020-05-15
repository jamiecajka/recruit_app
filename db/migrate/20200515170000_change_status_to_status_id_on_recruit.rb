class ChangeStatusToStatusIdOnRecruit < ActiveRecord::Migration[6.0]
  def change
    remove_column :recruits, :status, :string
    add_column :recruits, :status_id, :bigint
  end
end
