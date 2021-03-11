class StateDay < ApplicationRecord
  belongs_to :state
  validates :date, uniqueness: { scope: :state_id }
end
