class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  # has_many :events, as: :organized_events
  # has_many :events, as: :attending_events, through: :tickets

  def organizer?
    user_type.downcase == 'organizer'
  end

  def attendee?
    user_type.downcase == 'attendee'
  end
end
