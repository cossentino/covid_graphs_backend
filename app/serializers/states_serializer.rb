class StatesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :region, :population, :counties
end
