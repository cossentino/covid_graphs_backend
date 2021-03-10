class AddFipsToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :fips_prefix, :string
  end
end
