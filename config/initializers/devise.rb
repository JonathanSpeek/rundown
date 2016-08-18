Devise.setup do |config|

  config.secret_key = '4446874422697ddb2a484bae8398072c59a0385e504c87f58da716d66aa4fa6455fcdeae0e7d8f398f8483d0664b14bc3c6966aec56e96c0360999e9d742a970'
  config.mailer_sender = 'jonspeek@gmail.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.send_password_change_notification = true
  config.reconfirmable = true
  config.confirmation_keys = [:email]
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.maximum_attempts = 8
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.omniauth :facebook, ENV['FaceBook_Key'], ENV['FaceBook_Secret']
  config.omniauth :twitter, ENV['Twitter_Key'], ENV['Twitter_Secret']
end
