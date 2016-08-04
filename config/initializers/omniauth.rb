OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1079155461314-9o3677qotg5b5nhl5ufu4ns5i2r9mtb2.apps.googleusercontent.com', '3RiF6FDpYVwBEVo-zU62imvK', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end