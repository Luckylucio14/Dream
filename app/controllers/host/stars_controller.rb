class Host::StarsController < ApplicationController

    def new
        @star = Star.new
    end
end