class Brain < ApplicationRecord
  validates :name, :eq, :iq, :price_per_minute, presence: true
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  before_create :set_icon_path

  def set_icon_path
    @icon_path = "brain_icons/Brain_icon_#{(1..9).to_a.sample}"
  end
end
