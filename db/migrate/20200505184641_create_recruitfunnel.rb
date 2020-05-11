class CreateRecruitfunnel < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitfunnels do |t|
      t.belongs_to :recruit, null: false
      t.belongs_to :funnel, null: false
      t.date :date
    end
  end
end
