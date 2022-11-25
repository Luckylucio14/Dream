class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @star = Star.find(params[:star_id])
    @booking.user = current_user
    @booking.status = "pending"
    @booking.star = @star

    if @booking.save
      redirect_to dashboard_path(@booking)
    else
      render 'stars/show', status: :unprocessable_entity
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date)
  end
end
