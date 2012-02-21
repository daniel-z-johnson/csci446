# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Articles::Application.initialize!
Time::DATE_FORMATS[:show]="%b. %d, %Y."
Time::DATE_FORMATS[:index]="%A, %b. %d %Y."
