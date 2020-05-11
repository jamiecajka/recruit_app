class UpdateApplicantClassToYear < ActiveRecord::Migration[6.0]
  def change
    rename_column :applicants, :class_id, :year_id
  end
end
