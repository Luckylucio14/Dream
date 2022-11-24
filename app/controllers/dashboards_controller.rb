class DashboardsController < ApplicationController
  def show
    @booking = Booking.where(user: current_user)
    @star = Star.where(user: current_user)
    # @star_booking = Booking.find(star: @star, user: @user)
  end

  private

  def dashboard_params
    params.require(:booking).permit(:status, :user_id, :star_id, :arrival_date, :departure_date, :total_price)
  end
end
