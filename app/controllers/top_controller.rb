class TopController < ApplicationController
  def index
    @venues = Venue.active
  end

  def search
    @search_venues = Venue.active.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end
end
