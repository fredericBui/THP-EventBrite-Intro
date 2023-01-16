class User < ApplicationRecord
    after_create :sendWelcomeEmail
    def sendWelcomeEmail
        UserMailer.welcome_email("user@gmail.com").deliver_now
    end
end
