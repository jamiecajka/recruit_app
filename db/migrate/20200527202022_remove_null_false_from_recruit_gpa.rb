class RemoveNullFalseFromRecruitGpa < ActiveRecord::Migration[6.0]
  def change
    change_column_null :recruits, :gpa, true
  end
end
