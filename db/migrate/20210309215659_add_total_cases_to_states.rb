class AddTotalCasesToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :total_cases, :integer
  end
end
