class DashboardController < ApplicationController
  def show
    @booking = Booking.new(user: @user)
    @star = Star.new(user: @user)
    @star_booking = Booking.new(star: @star, user: @user)
  end
end
