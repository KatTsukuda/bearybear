OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '968586452732-7j03fm0o8vubub08d4j3t7hdf1911tl9.apps.googleusercontent.com', 'a4rI8ka-G41YMmAfepfWtbm5', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
