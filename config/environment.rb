# Load the Rails application.
require_relative "application"
require 'dot_env'
current_environment = DotEnv.get_environment

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = { 
    :user_name => ENV['SMTP_LOGIN'],
    :password => ENV['SMTP_PSW'],
    :address => 'smtp.mailtrap.io',
    :domain => 'smtp.mailtrap.io',
    :port => '2525',
    :authentication => :cram_md5
}