class StateDay < ApplicationRecord
  belongs_to :state
  validates :date, uniqueness: { scope: :state_id }
  validates :date, presence: true
  validates :cases, presence: true
end
