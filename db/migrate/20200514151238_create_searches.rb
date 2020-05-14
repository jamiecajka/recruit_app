class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.integer :year
      t.string :level
      t.string :funnel
      t.string :position

      t.timestamps
    end
  end
end
