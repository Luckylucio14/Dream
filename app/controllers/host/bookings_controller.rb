module Host
  class BookingsController < ApplicationController
    # skip_before_action :authenticate_user!, only: %i[index accept decline]

    def index
      @bookings = Booking.where(user: current_user)
      @star_books = Booking.includes(:star).where(star: { user: current_user })
    end

    def accept
      @booking = Booking.find(params[:id])
      @booking.update(status: "accepted")
      redirect_to dashboard_path
    end

    def decline
      @booking = Booking.find(params[:id])
      @booking.update(status: "declined")
      redirect_to dashboard_path
    end
  end
end
