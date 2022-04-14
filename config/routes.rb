Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/about', to: 'website#about', as: 'about'
  get '/art', to: 'art#index'
  get '/under_development', to: 'website#under_development'

  post '/contact', to: 'contact_requests#create', as: 'contact_request'

  get '/projects', to: 'projects#index'
  post '/projects', to: 'projects#index'
  post '/projects/update_filters', to: 'projects#update_filters'
  post '/projects/toggle_all', to: 'projects#toggle_all'


  namespace :admin do
    root "projects#index"
    resources :projects
    resources :categories
  end

  root "website#index"
end
