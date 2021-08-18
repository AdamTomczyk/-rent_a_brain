class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :brain
end
