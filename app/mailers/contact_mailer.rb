class ContactMailer < ApplicationMailer

    def contact_request(contact_request)
        @contact = {} unless @contact

        @contact[:name] = contact_request.name
        @contact[:email] = contact_request.email
        @contact[:message] = contact_request.message

        mail(to: Rails.application.credentials[:email], subject: "Site Contact Request")
    end
end
