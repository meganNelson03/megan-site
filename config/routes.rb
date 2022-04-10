Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/art', to: 'art#index'

  get '/projects', to: 'projects#index'

  get '/under_development', to: 'website#under_development'

  post '/contact', to: 'contact_requests#create', as: 'contact_request'

  root "website#index"
end
