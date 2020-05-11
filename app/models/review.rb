class Review < ApplicationRecord
  belongs_to :event_user
  has_many :users, through: :event_users

  def show_rating(rating_id, rated_id)
    self.where(rating_event_user_id: rating_id ,rated_event_user_id: rated_id).first
  end

  def avg_rating(id)
    self.where(rated_event_user_id: id).average(:rating).to_f
  end
end
