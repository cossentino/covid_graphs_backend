class AddIndexToCounties < ActiveRecord::Migration[6.1]
  def change
    remove_column :counties, :state_id
    add_reference :counties, :state, foreign_key: true
  end
end
