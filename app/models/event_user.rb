class EventUser < ApplicationRecord
  belongs_to :event
  belongs_to :user

  # validates :user, uniqueness: { scope: event_id }
end
