class County < ApplicationRecord
  belongs_to :state
  validates :fips, uniqueness: true
end
