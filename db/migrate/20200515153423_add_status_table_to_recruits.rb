class AddStatusTableToRecruits < ActiveRecord::Migration[6.0]
  def change
    add_column :recruits, :status, :string, null: false, default: 'Applicant'
  end
end
