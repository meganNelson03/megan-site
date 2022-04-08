class ApplicationController < ActionController::Base

    def under_development
        redirect_to under_development_path
    end
end
