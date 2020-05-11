class AddZipFieldToSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :zip, :string
  end
end
