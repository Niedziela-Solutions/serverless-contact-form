Jets.application.configure do
  # Example:
  # config.function.memory_size = 2048

  config.action_mailer.show_previews = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: ENV['SMTP_ADDRESS'],
    port: 587,
    domain: ENV['SMTP_DOMAIN'],
    authentication: :login,
    user_name: ENV['SMTP_USER_NAME'],
    password: ENV['SMTP_PASSWORD'],
    enable_starttls_auto: true
  }

  config.cors = true
  config.domain.cert_arn = ENV['CERT_ARN']
  config.domain.name = ENV['DOMAIN']
  config.domain.hosted_zone_name = ENV['HOSTED_ZONE_NAME']
end
