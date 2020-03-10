class Ticket < ApplicationRecord
  belongs_to :attending_event, class_name: "Event", foreign_key: :event_id
  belongs_to :user

  def attendee!
    self.status = 'Attending'
    save!
  end

  def attendee?
    status == 'Attending'
  end

  def showup!
    self.status = 'Showed up'
    save!
  end

  def showup?
    status == 'Showed up'
  end

  def cancel!
    self.status = 'Canceled'
    save!
  end

  def canceled?
    status == 'Canceled'
  end
end
