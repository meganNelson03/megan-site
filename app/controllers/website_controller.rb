class WebsiteController < ApplicationController

    def index
        @contact_request = ContactRequest.new
        
        render :layout => 'homepage'
    end

    def about
    end

    def under_development 
    end
    
end
