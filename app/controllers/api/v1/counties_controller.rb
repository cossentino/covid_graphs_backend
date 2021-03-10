class Api::V1::CountiesController < ApplicationController

  def index
    if params[:state_id]
      counties = State.find(params[:state_id].to_i).counties
    else
      counties = County.all
    end
    render json: CountiesSerializer.new(counties)
  end






  private


  def states_params
    params.require(:county).permit(:name, :fips, :population, :total_cases, :state_id)
  end

end
