class AddStatusColumnToSearch < ActiveRecord::Migration[6.0]
  def change
    add_column :searches, :status, :string
  end
end
