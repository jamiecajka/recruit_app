class AddRolesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :superadmin_role, :boolean
    add_column :users, :user_role, :boolean
  end
end
