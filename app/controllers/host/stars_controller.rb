class Host::StarsController < ApplicationController

    def new
        @star = Star.new
        redirect_to dashboard_path
    end

end