class Ticket < ApplicationRecord
  belongs_to :attending_event, class_name: "Event", foreign_key: :event_id
  belongs_to :user



  def attendee!
    self.status = 'Attendee'
    save!
  end

  def attendee?
    status == 'Attendee'
  end

  def showup!
    self.status = 'Show up'
    save!
  end

  def showup?
    status == 'Show up'
  end

  def cancel!
    self.status = 'Canceled'
    save!
  end

  def canceled?
    status == 'Canceled'
  end
end
