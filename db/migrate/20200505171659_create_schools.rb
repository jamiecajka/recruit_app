class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.string :address
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip
      t.string :coach, null: false
      t.string :phone, null: false
    end
  end
end
