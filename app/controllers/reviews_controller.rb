class ReviewsController < ApplicationController

  def index
    # @reviews = policy_scope(Review).where(rated_event_user_id:)
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @event_user = EventUser.find(params[:event_user_id])
    # @rated_event_user = User.find(@event_user.user_id)
    @review = Review.new(review_params.merge(event_user_id: params[:event_user_id], rating_event_user_id: current_user.id, rated_event_user_id: @event_user.user_id))
    authorize @review
    if @review.save
      redirect_to court_event_path(id: params[:event_id])
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating)
  end
end
