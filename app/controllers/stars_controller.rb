class StarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

    def index
      @stars = Star.all
    end

  def show
    @star = Star.find(params[:id])
    @booking = Booking.new
  end
end
