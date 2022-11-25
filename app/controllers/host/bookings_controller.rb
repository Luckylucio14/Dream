class Host::BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index accept decline]
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
