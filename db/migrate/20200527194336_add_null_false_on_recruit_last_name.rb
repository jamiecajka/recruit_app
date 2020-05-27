class AddNullFalseOnRecruitLastName < ActiveRecord::Migration[6.0]
  def change
    change_column_null :recruits, :last_name, false
  end
end
