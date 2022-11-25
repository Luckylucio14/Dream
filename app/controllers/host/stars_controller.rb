class Host::StarsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index show]

    def new
        @star = Star.new
    end
    
    def create
        raise
        @current_user = current_user
    
        @star = Star.new(star_params)
        @star.save

    # #     if @star.save
    #         redirect_to host_stars_path
    #     end
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