class DashboardsController < ApplicationController
  def show
    @bookings = Booking.where(user: current_user)
    @stars = Star.where(user: current_user)
    @star_books = Booking.includes(:star).where(star: { user: current_user })
  end

  private

  def dashboard_params
    params.require(:booking).permit(:status, :user_id, :star_id, :arrival_date, :departure_date, :total_price)
  end
end
