class RecreateRecruitTable < ActiveRecord::Migration[6.0]
  def change
    create_table :recruits do |t|
      t.string :name, null: false
      t.string :gpa, null: false
      t.integer :act
      t.string :height, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :basketball, null: false, default: "0"
      t.string :academic, null: false, default: "0"
      t.string :ppg, null: false, default: "0"
      t.string :o_rebound, null: false, default: "0"
      t.string :d_rebound, null: false, default: "0"
      t.string :two, null: false, default: "0"
      t.string :three, null: false, default: "0"
      t.string :free_throw, null: false, default: "0"
      t.string :assists, null: false, default: "0"
      t.string :steals, null: false, default: "0"
      t.string :turn_overs, null: false, default: "0"
      t.string :blocks, null: false, default: "0"
      t.string :minutes, null: false, default: "0"

      t.belongs_to :school, null: false
      t.belongs_to :position, null: false
      t.belongs_to :funnel
      t.belongs_to :level
      t.belongs_to :year, null: false
      t.belongs_to :status, null: false, default: "2"
    end
  end
end
