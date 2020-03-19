class Court < ApplicationRecord
  has_many :events
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :court_type, presence: true, inclusion: { in: %w(indoor outdoor) }
end
