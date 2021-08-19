class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :brain
  enum status: [:pending, :accepted, :rejected] # accessing with index
end
