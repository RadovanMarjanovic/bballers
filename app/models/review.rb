class Review < ApplicationRecord
  belongs_to :event_user
  # belongs_to :rated_event_user, class: "EventUser", forgeign_key: rated_event_user_id

  def show_rating(rating_id, rated_id)
    self.where(rating_event_user_id: rating_id ,rated_event_user_id: rated_id).first
  end
end
