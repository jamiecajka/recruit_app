class AddDefaultToUserRole < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :user_role, :boolean, default: true
  end
end
