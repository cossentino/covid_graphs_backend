class CreateCounties < ActiveRecord::Migration[6.1]
  def change
    create_table :counties do |t|
      t.string :name
      t.integer :state_id
      t.integer :total_cases
      t.integer :total_deaths
      t.integer :total_tests
      t.integer :fips

      t.timestamps
    end
  end
end
