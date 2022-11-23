class StarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

    def show
      @star = Star.find(params[:id])
    end
end
