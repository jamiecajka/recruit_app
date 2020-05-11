class CreateCnotes < ActiveRecord::Migration[6.0]
  def change
    create_table :cnotes do |t|
      t.belongs_to :recruit, null: false
      t.belongs_to :user, null: false
      t.text :text, null: false
      t.date :date, null: false
    end
  end
end
