class CountiesSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :state
  attributes :name, :fips, :population, :total_cases, :state, :case_rate

end
