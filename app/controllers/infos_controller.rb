class InfosController < ApplicationController
  before_action :find_trip

  def index
    @infos = @trip.infos
  end


  def edit
  end

  def new
  end

  private

  def info_params
    params.require(:info).permit
  end

  def find_trip
    @trip = Trip.find(params[:trip_id])
  end
end
