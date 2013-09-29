class TimecardsController < ApplicationController
  before_action :set_timecard, only: [:show, :edit, :update, :destroy]

  def index
    @timecards = Timecard.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_timecard
    timecard = Timecard.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def timecard_params
    params.require(:timecard).permit(:employee_id, :weekDate)
  end

end