class State < ApplicationRecord
  has_many :counties



  def state_total_of(attribute)
    totals_by_county = self.counties.pluck(attribute)
    totals_by_county.sum
  end

end
