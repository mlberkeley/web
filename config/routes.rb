Rails.application.routes.draw do
  get 'events/index'

  # static pages
  root 'static#index'
  get '/about', to: 'static#about'
  get '/events', to: 'events#index'
end
