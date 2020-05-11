class CreateFunnels < ActiveRecord::Migration[6.0]
  def change
    create_table :funnels do |t|
      t.string :name, null: false
    end
  end
end
