class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :organized_events, class_name: "Event"
  has_many :tickets
  has_many :attending_events, through: :tickets
  has_one_attached :avatar
  has_many :orders

  def organizer?
    user_type.downcase == 'organizer'
  end

  def attendee?
    user_type.downcase == 'attendee'
  end
end
