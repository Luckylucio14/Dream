class StarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
    def index
        @stars = Star.all
    end

    def show
    end
end
