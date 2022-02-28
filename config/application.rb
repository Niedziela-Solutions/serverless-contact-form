Jets.application.configure do
  config.project_name = 'contact-form-handler'
  config.mode = 'api'

  config.prewarm.enable = true
  config.controllers.default_protect_from_forgery = false
end
