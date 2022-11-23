class StarsController < ApplicationController
    def index
        @stars = Star.all
    end

    def show
    end
end
