ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings   = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'gmail.com"',
    :user_name            => 'noreply.setare@gmail.com',
    :password             => 'Setare123',
    :authentication       => :login,
    :enable_starttls_auto => true
}