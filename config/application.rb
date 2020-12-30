Jets.application.configure do
  config.project_name = 'serverless-contact-form'
  config.mode = 'api'

  config.prewarm.enable = true
  config.domain.route53 = false
end
