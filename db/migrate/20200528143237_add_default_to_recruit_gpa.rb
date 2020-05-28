class AddDefaultToRecruitGpa < ActiveRecord::Migration[6.0]
  def change
    change_column :recruits, :gpa, :string, default: '0'
  end
end
