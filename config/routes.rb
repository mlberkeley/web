Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # static pages
  root 'static#index'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'

  get '/events', to: 'events#index'
  get '/events/past', to: 'events#past'

  resources :project, :only => [:index, :show] do
    collection do
      get :research
    end
  end
end
