class ContactRequest < ApplicationRecord
    attr_accessor :email_validation

    validates :name, :email, :message, presence: true
end
