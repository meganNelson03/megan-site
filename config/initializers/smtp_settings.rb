
if Rails.env.development?
    # SMTP settings for gmail

    host = 'localhost:3000' 
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.default_url_options = { host: host, protocol: 'http' } 

    ActionMailer::Base.smtp_settings = {
        :address              => "smtp.gmail.com",
        :port                 => 587,
        :user_name            => Rails.application.credentials.dig(:email),
        :password             => Rails.application.credentials.dig(:email_password),
        :authentication       => :login,
        :enable_starttls_auto => true
    }
end