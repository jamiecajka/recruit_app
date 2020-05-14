class ChangeFunnelIdToBigint < ActiveRecord::Migration[6.0]
  def change
    change_column :searches, :funnel_id, 'bigint USING CAST(funnel_id AS bigint)'
  end
end
