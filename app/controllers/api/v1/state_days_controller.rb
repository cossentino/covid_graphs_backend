class Api::V1::StateDaysController < ApplicationController

  def index
    state_days = State.find_by(id: params[:state_id]).state_days
    render json: StateDaysSerializer.new(state_days)
  end

private


  def states_params
    params.require(:state).permit(:name, :region, :population)
  end

end
