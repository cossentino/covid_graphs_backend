class State < ApplicationRecord
  has_many :counties, dependent: :destroy
  validates :name, uniqueness: true


  def total_by_county(attribute)
    total_by_county = self.counties.pluck(attribute)
    total_by_county.sum
  end

end
