class InfosController < ApplicationController
  before_action :trip
  def index
    @infos = @trip.infos
  end

  def show
  end

  def edit
  end

  def new
    @info = @trip.infos.new
  end

  def create
    @info = @trip.infos.create(info_params)
    redirect_to trip_infos_path(@trip, @info)
  end

  private

  def info_params
    params.require(:info).permit(:places, :comments)
  end

  def trip
    @trip = Trip.find(params[:trip_id])
  end

  def info
    @info = @trip.infos.find(params[:id])
  end
end
