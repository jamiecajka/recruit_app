class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
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
      t.string :ppg
      t.string :o_rebound
      t.string :d_rebound
      t.string :two
      t.string :three
      t.string :free_throw
      t.string :assists
      t.string :steals
      t.string :turn_overs
      t.string :blocks
      t.string :minutes
      t.string :status, null: false, default: "pending"

      t.belongs_to :school, null: false
      t.belongs_to :position, null: false
      t.belongs_to :class, null: false
    end
  end
end
