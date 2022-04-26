class ContactRequestsController < ApplicationController

    def index
    end

    def create
		@contact_request = ContactRequest.new(contact_request_params)
		if @contact_request.save
            ContactMailer.contact_request(@contact_request).deliver_now
            
			redirect_to root_path, notice: "Yeehaw!"
		else 
			redirect_to under_development_path
		end        
    end 
    
    private
        def contact_request_params
            params.require(:contact_request).permit(:name, :email, :message, :email_validation)
        end
    
end
