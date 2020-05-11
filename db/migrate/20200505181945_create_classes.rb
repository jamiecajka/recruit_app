class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.integer :year, null: false
      t.boolean :active, null: false
    end
  end
end
