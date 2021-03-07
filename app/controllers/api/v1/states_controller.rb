class Api::V1::StatesController < ApplicationController

  def index
    states = State.all
    render json: states
  end






  private


  def states_params
    params.require(:state).permit(:name, :region, :population)
  end

end
