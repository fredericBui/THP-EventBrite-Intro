class User < ApplicationRecord
    has_many :attendances
    has_many :events, through: :attendances
    
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    after_create :sendWelcomeEmail
    def sendWelcomeEmail
        UserMailer.welcome_email("user@gmail.com").deliver_now
    end
end
