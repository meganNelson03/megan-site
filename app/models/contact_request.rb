class ContactRequest < ApplicationRecord
    attr_accessor :email_validation
    validates :name, :email, :message, presence: true

    validates :email, presence: true, format: Devise.email_regexp
    
end
