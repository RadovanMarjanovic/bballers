class EventUsersController < ApplicationController

  def new
    @event = Event.new
    authorize @event
    @event_user = EventUser.new
    authorize @event_user
  end



  def create
    @event_user = EventUser.new(event_id: params[:event_id], user_id: current_user.id)
    authorize @event_user
    if @event_user.event.event_user_ids.count < @event_user.event.num_of_players
      if @event_user.save
        redirect_to courts_path
      else
        render :new
      end
    else
      redirect_to court_event_path
    end
  end

  private

end
