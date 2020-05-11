class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :event_users, dependent: :destroy
  has_many :events, through: :event_users
  has_many :reviews, through: :event_users
  has_one_attached :photo

  def avg_rating
    Review.where(rated_event_user_id: self.id).average(:rating).to_f
  end

  def number_of_reviews
    Review.where(rated_event_user_id: self.id).count
  end
end
