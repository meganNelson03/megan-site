class AdminController < ApplicationController
	layout "application_admin"
	before_action :require_website_admin
	

	private

        def require_website_admin
            unless current_user
                redirect_to new_user_session_path and return
            end
        end

end