class AddNameToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :name, :string
  end
end
