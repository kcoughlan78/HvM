# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gameproject::Application.initialize!

Time::DATE_FORMATS[:short] = "Created on %d %b at %H:%M %p"

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.sendgrid.net',
    :port                 => '587',
    :authentication       => :plain,
    :user_name            => ENV['app16268747@heroku.com'],
    :password             => ENV['nzypgvmp'],
    :domain               => 'infinite-spire-6748.herokuapp.com',
    :enable_starttls_auto => true,
}
