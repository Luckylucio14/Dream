class Host::StarsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index show]

    def new
        @star = Star.new
    end
    
    def create
        @current_user = current_user
    
        @star = Star.new(star_params)
        if @star.save
            redirect_to dashboard_path(@star)
        end
    end

    def destroy
        @star.destroy
        redirect_to dashboard_path
    end

    private

    def star_params
        params.require(:star).permit(:name, :location, :climate, :capacity, :price_per_night, :user_id, :created_at, :updated_at)
    end
end