class StatesSerializer
  include FastJsonapi::ObjectSerializer
  has_many :counties
  has_many :state_days
  attributes :name, :region, :population, :counties, :total_cases, :case_rate, :state_days
end
