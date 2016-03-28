Rails.application.routes.draw do
  
  # static pages
  root 'static#index'
  get '/about', to: 'static#about'
  get '/events', to: 'events#index'
  get '/events/past', to: 'events#past'

end
