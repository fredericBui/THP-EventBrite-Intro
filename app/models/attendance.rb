class Attendance < ApplicationRecord
    after_create :sendConfirmation_email
    def sendConfirmation_email
        UserMailer.confirmation_email("user@gmail.com").deliver_now
    end
end
