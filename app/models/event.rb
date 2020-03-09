class Event < ApplicationRecord
  belongs_to :user
  has_many :tickets, dependent: :destroy
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
