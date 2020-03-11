class Event < ApplicationRecord
  belongs_to :user
  has_many :tickets, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :banner, presence: true
  validates :food, presence: true
  validates :drink, presence: true
  validates :number_max_of_attendees, presence: true
  validates :stake, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  monetize :stake_cents

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def future?
    start_time > DateTime.current.to_date
  end

  def close!
    self.status = 'Closed'
    save!
  end

  def closed?
    self.status == 'Closed'
  end
end
