Jets.application.configure do
  config.project_name = 'serverless-contact-form'
  config.mode = 'api'

  config.prewarm.enable = true
end
