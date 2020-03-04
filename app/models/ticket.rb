class Ticket < ApplicationRecord
  belongs_to :attending_event, class_name: "Event", foreign_key: :event_id
  belongs_to :user
end
