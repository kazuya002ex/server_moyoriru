class VenuesController < ApplicationController
  # TODO: Controller実装後に戻す
  # before_action :set_venue, only: %i(show)

  def index
  end

  def show
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
