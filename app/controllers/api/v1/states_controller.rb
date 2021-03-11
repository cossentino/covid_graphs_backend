class Api::V1::StatesController < ApplicationController

  def index
    states = State.all
    render json: StatesSerializer.new(states)
  end


  def show
    state = State.find(params[:id])
    render json: StatesSerializer.new(state)
  end



  private


  def states_params
    params.require(:state).permit(:name, :region, :population)
  end

end
