# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gameproject::Application.initialize!

Time::DATE_FORMATS[:short] = "Created on %d %b at %H:%M %p"
