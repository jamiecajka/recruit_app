class AddKeyColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :key, :string, default: ''
  end
end
