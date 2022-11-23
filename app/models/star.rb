class Star < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
end
