class Admin::VenuesController < ApplicationController
  before_action :authenticate_admin
  before_action :set_venue, only: %i(edit update destroy)

  def index
    @venues = Venue.active
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user_id = 1
    if @venue.save
      flash[:notice] = '作成しました'
      redirect_to new_admin_venue_path
    else
      flash[:alert] = '失敗'
      render :new
    end
  end

  def edit
  end

  def update
    if @venue.update(venue_params)
      flash[:notice] = '更新しました'
      redirect_to admin_venues_path
    else
      flash[:alert] = '失敗'
      render :new
    end
  end

  def destroy
    @venue.delete!
    redirect_to admin_venues_path
    flash[:notice] = '削除しました'
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(
      :location_name, :station, :on_foot, :latitude, :longitude, :access_information_url
    )
  end

  def authenticate_admin
    current_user = 1
    ## TODO: 本来の実装
    # unless current_user.is_admin?
    ## TODO: ダミー噛ませておく
    unless current_user.present?
      flash[:alert] = 'アクセス権限がありません'
      redirect_to root_path
    end
  end
end