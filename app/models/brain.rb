class Brain < ApplicationRecord
  validates :name, :eq, :iq, :price_per_minute, presence: true
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
end
