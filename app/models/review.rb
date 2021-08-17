class Review < ApplicationRecord
  belongs_to :brain
  validates :comment, :rating, presence: true
  validates :rating, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 0,
                                    less_than_or_equal_to: 5 }
end
