class Brain < ApplicationRecord


  validates :name, :eq, :iq, :price_per_minute, presence: true
  has_many :reviews, dependent: :destroy
end
