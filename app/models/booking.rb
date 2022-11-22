class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :star
  validates :status, inclusion: { in: ["declined", "accepted", "pending"] }
end
