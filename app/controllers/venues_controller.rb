class VenuesController < ApplicationController
  before_action :set_venue, only: %i(show)

  def index
  end

  def show
  end

  def search
    @venues = Venue.search(params[:keyword])
    @keyword = params[:keyword]
    render 
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
