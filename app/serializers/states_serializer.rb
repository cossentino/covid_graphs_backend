class StatesSerializer
  include FastJsonapi::ObjectSerializer
  has_many :counties
  attributes :name, :region, :population, :counties
end
