class EventUser < ApplicationRecord
  belongs_to :event
  belongs_to :user
  has_many :reviews, dependent: :destroy
  # validates :user, uniqueness: { scope: event_id }

  def is_event_user_rated?(id, rating_id, rated_id)
    self.reviews.where(event_user_id: id, rating_event_user_id: rating_id ,rated_event_user_id: rated_id).count != 0
  end

end
