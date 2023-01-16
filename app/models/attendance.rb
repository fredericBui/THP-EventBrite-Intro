class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :event
    after_create :sendConfirmation_email
    def sendConfirmation_email
        UserMailer.confirmation_email("user@gmail.com").deliver_now
    end
end
