class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :star

  validates :status, inclusion: { in: ["accepted", "declined", "pending"] }
end
