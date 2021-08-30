class Venue < ApplicationRecord

  validates :location_name, presence: true
  validates :station, presence: true
  validates :on_foot, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true


  scope :active, -> () { where(deleted_at: nil) }
end