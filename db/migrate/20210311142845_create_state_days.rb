class CreateStateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :state_days do |t|
      t.bigint "state_id"
      t.index ["state_id"], name: "index_state_days_on_state_id"
      t.integer :cases
      t.date :date

      t.timestamps
    end
  end
end
