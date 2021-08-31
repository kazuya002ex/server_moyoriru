class TopController < ApplicationController
  def index
    @venues = Venue.active
  end
end
