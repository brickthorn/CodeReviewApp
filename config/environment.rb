# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CodeReviewApp::Application.initialize!

# ActionMailer Settings
ActionMailer::Base.smtp_settings = {

    :address              => "smtp.sendgrid.net",
    :port                 => 587,
    :domain               => 'http://afternoon-stream-7185.herokuapp.com/',
    :user_name            => 'app6499826@heroku.com',
    :password             => 'p4bu0sj3',
    :authentication       => 'plain',
    :enable_starttls_auto => true
}