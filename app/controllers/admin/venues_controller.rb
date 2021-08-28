class Admin::VenuesController < ApplicationController
  before_action :set_venue, only: %i(edit update destroy)

  def index
  end

  def new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user_id = 1
    if @venue.create
      redirect_to new_admin_venue_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(
      :location_name, :station, :on_foot, :latitude, :longitude, :access_information_url, :deleted_at
    )
  end
end