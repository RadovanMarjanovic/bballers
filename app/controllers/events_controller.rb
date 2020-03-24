class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_court, only: [:show, :edit, :update, :new, :create]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index         # GET /events
    @events = policy_scope(Event).where(court_id: params[:court_id]).order(created_at: :asc)
  end

  def show          # GET /events/:id
  end

  def new           # GET /events/new
    @event = Event.new
    authorize @event
  end

  def create        # POST /events
    if @court.events.create(event_params.merge(user_id: current_user.id))
      redirect_to court_events_path
    else
      render :new
    end
  end

  def edit          # GET /events/:id/edit
  end

  def update        # PATCH /events/:id
    if @event.update(event_params)
      redirect_to court_event_path(@event)
    else
      render :edit
    end
  end

  # def destroy       # DELETE /events/:id
  # end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date, :price_cents, :num_of_players)
  end

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end

  def set_court
    @court = Court.find(params[:court_id])
    authorize @court
  end
end
