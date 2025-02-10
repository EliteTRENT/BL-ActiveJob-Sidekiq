# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  # Other settings...

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    domain: 'gmail.com',
    user_name: 'aryannegi522@gmail.com', 
    password: 'ljkk whit jxjq quvb',
    authentication: 'plain',
    enable_starttls_auto: true
  }

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
end
