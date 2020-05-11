class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_court, only: [:index, :show, :new, :create]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = policy_scope(Event).where(court_id: params[:court_id]).order(date: :desc)
  end

  def show
    @user = User.find(@event.user_id)
    unless current_user.nil?
      @event_user = EventUser.find_by(event_id: params[:id], user_id: current_user.id)
      unless @event_user.nil?
        authorize @event_user
      end
    end
  end

  def avg_rating(id)
    Review.where(rated_event_user_id: id).average(:rating).to_f
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    if @court.events.create(event_params.merge(user_id: current_user.id))
      redirect_to court_path(@court)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to court_events_path
    else
      render :edit
    end
  end

  # def destroy
  # end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date, :price_cents, :num_of_players, :time)
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
