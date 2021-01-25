Jets.application.routes.draw do
  post '/submit', to: 'contact#create'
end
