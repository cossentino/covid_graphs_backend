class CountiesSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :state
  attributes 
end
