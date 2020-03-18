class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index         # GET /events
    @events = Event.all
  end

  def show          # GET /events/:id
  end

  def new           # GET /events/new
    @court = Court.find(params[:court_id])
    @event = Event.new
  end

  def create        # POST /events
    @court = Court.find(params[:court_id])
    @event = Event.new(event_params)
    @event.court = @court
    # @event.user = current_user
    if @event.save
      redirect_to court_events_path
    else
      render :new
    end
  end

  # def edit          # GET /events/:id/edit
  # end

  # def update        # PATCH /events/:id
  # end

  # def destroy       # DELETE /events/:id
  # end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date, :price_cents, :num_of_players, :court_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
