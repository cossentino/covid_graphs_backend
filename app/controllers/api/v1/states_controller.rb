class Api::V1::StatesController < ApplicationController

  def index
    states = State.all
    render json: StatesSerializer.new(states)
  end


  def show
    state = State.find_by(id: params[:id])
    render json: StatesSerializer.new(state)
  end

  def update
    state = State.find_by(id: params[:id])
    if state.update(total_cases: params[:total_cases].to_i)
      render json: StatesSerializer.new(state)
    else
      render json: {errors: sd.errors.full_messages}, status: :unprocessible_entity
    end
  end



  private


  def states_params
    params.require(:state).permit(:name, :region, :population, :total_cases)
  end

end
