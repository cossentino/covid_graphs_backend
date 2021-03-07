class AddPopulationToStateAndCounty < ActiveRecord::Migration[6.1]
  def change
    add_column :counties, :population, :integer
    add_column :states, :population, :integer
  end
end
