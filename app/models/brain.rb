class Brain < ApplicationRecord
  validates :name, :category, :eq, :iq, :price_per_minute, presence: true
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  before_create :set_icon_path
  CATEGORY = ["Heros", "Sports", "Science", "Phylosophy", "EvilMinds", "Saviours", "Arts", "T.A's"]

  def set_icon_path
    @icon_path = "brain_icons/Brain_icon_#{(1..9).to_a.sample}"
  end
end
