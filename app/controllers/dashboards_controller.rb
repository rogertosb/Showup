class DashboardsController < ApplicationController
  def index
    @user = current_user

    if @user.organizer?
      @future_events = @user.organized_events.select {|ev| ev.start_time.future? }
      @past_events = @user.organized_events.select {|ev| ev.start_time.past? }
    elsif @user.attendee?
      @future_events = @user.attending_events.select {|ev| ev.start_time.future? }
      @past_events = @user.attending_events.select {|ev| ev.start_time.past? }
    end
  end

  def upcoming_events
    @event.future?
  end

  def past_events
    @event.past?
  end

end

