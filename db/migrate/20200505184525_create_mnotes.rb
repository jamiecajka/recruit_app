class CreateMnotes < ActiveRecord::Migration[6.0]
  def change
    create_table :mnotes do |t|
      t.belongs_to :recruit, null: false
      t.text :text, null: false
    end
  end
end
