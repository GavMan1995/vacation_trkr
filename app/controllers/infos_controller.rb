class InfosController < ApplicationController
  before_action :find_trip
  def index
    @infos = @trip.infos
  end


  def edit
  end

  def new
    @info = @trip.infos.new
  end

  def create
    @info = @trip.infos.create(info_params)
    redirect_to trip_infos_path(@trip)
  end

  private

  def info_params
    params.require(:info).permit(:places, :comments)
  end

  def find_trip
    @trip = Trip.find(params[:trip_id])
  end
end
