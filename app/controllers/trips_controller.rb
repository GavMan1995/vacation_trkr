class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    redirect_to trips_path
  end

  def edit
    @trip = Trip.find(trip)
  end

  def update
    trip.update(trip_params)
    redirect_to trips_path
  end

  def destroy
    trip.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :start, :end)
  end

  def trip
    @trip = Trip.find(params[:id])
  end

end
