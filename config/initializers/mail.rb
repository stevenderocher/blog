# Use config vars to get your Gmail credentials onto Heroku.
# They will be automatically picked up by this file in production.

heroku config:add GMAIL_EMAIL=stevenderocher@gmail.com GMAIL_PASSWORD=killer

require 'smtp-tls'

ActionMailer::Base.smtp_settings = {
  :address        => "smtp.gmail.com",
  :port           => "587",
  :authentication => :plain,
  :user_name      => ENV['GMAIL_EMAIL'],
  :password       => ENV['GMAIL_PASSWORD']
}

DO_NOT_REPLY = "donotreply@example.com"

