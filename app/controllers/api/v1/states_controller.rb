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
    puts state.total_cases
    if state.update(total_cases: state.total_cases + params[:total_cases].to_i)
      render json: "rendering", status: :accepted
    else
      render json: {errors: sd.errors.full_messages}, status: :unprocessible_entity
  end



  private


  def states_params
    params.require(:state).permit(:name, :region, :population, :total_cases)
  end

end
