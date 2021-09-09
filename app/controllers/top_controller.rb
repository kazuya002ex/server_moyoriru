class TopController < ApplicationController
  def index
    @venues = Venue.active.order(created_at: :asc).limit(5)
  end

  def search
    @search_venues = Venue.active.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end
end
