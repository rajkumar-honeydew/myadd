

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['757435937699085'], ENV['4f7e3339d835ea224785dfffde64f0b7']
end

