class UpdateDateTypeOnCnotes < ActiveRecord::Migration[6.0]
  def change
    change_column :cnotes, :date, :string
  end
end
