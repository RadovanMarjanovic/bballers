class Event < ApplicationRecord
  belongs_to :court
  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true

  def is_user_registered?(user_id)
    self.event_users.where(user_id: user_id).count != 0
  end

  def is_event_full?
    self.event_user_ids.count == self.num_of_players
  end

  def is_past_event?
    self.date < Date.today
  end
end
