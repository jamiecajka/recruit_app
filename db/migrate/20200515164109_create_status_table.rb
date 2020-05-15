class CreateStatusTable < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses_tables do |t|
      t.string :status, null: false
    end
  end
end
