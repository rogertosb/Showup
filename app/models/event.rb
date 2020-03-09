class Event < ApplicationRecord
  belongs_to :user
  has_many :tickets, dependent: :destroy
  has_one_attached :photo

  monetize :stake_cents

end
