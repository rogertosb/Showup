class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events

  def organizer?
    user_type == 'Organizer'
  end

  def attendee?
    user_type == 'Attendee'
  end
end
