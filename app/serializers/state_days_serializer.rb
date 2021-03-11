class StateDaysSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :state
  attributes :date, :cases, :state_id
end
