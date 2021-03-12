class Api::V1::StateDaysController < ApplicationController

  def index
    state_days = State.find_by(id: params[:state_id]).state_days
    render json: StateDaysSerializer.new(state_days)
  end

  def create
    # raise params.inspect
    state = State.find_by(id: state_days_params[:state_id].to_i)
    sd = state.state_days.build(date: state_days_params[:date], cases: state_days_params[:cases])
    if sd.save
      puts "success"
    else
      puts "failure"
    end
  end

private


  def state_days_params
    params.require(:state_day).permit(:state_id, :cases, :date)
  end

end
