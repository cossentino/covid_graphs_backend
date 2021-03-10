class Api::V1::CountiesController < ApplicationController

  def index
    counties = County.all
    render json: CountiesSerializer.new(counties)
  end






  private


  def states_params
    params.require(:county).permit(:name, :fips, :population, :total_cases, :state_id)
  end

end
