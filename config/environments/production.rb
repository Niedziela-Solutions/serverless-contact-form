Jets.application.configure do
  # Example:
  # config.function.memory_size = 2048

  config.action_mailer.show_previews = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: ENV.fetch('SMTP_ADDRESS', nil),
    port: 587,
    domain: ENV.fetch('SMTP_DOMAIN', nil),
    authentication: :login,
    user_name: ENV.fetch('SMTP_USER_NAME', nil),
    password: ENV.fetch('SMTP_PASSWORD', nil),
    enable_starttls_auto: true
  }

  config.cors = true
  config.domain.cert_arn = ENV.fetch('CERT_ARN', nil)
  config.domain.name = ENV.fetch('DOMAIN', nil)
  config.domain.hosted_zone_name = ENV.fetch('HOSTED_ZONE_NAME', nil)
end
