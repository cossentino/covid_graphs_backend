class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def case_rate
    ((self.total_cases.to_f / self.population.to_f) * 100).round(2)
  end


end
