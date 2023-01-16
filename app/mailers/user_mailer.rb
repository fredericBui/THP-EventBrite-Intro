class UserMailer < ApplicationMailer
    def welcome_email(email) 
        mail(to: email, subject: 'Bienvenue chez nous !') 
    end

    def confirmation_email(email)
        mail(to: email, subject: 'Invitation confirmé !') 
    end
end
