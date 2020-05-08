class Court < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :events

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :court_type, presence: true, inclusion: { in: %w(indoor outdoor) }
  has_one_attached :photo
end
