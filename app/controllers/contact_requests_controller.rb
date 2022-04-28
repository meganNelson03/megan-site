class ContactRequestsController < ApplicationController

    def index
    end

    def create
        @contact_request = ContactRequest.new(contact_request_params)
        
        respond_to do |format|
            if @contact_request.save
                ContactMailer.contact_request(@contact_request).deliver_now unless params[:email_validation].present?
                flash[:notice] = "Thanks, I'll be in touch soon!"
                format.js { render 'contact' }
            else
                if params[:contact_request][:name].blank? || params[:contact_request][:email].blank? || params[:contact_request][:message].blank? 
                    flash[:error] = "Please correct the errors below, all fields are required."
                else
                    flash[:error] = "Sorry, something went wrong. Please try again later."
                end

                format.js { render 'error' }
            end
        end        
    end 
    
    private
        def contact_request_params
            params.require(:contact_request).permit(:name, :email, :message, :email_validation)
        end
    
end
