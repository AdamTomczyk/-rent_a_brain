class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #:omniauthable

  validates :fullname, length: {maximum: 40 }, presence: true
  #validates :password, length: { maximum: 8 }, presence: true

  has_many :brains
  has_many :bookings
end
