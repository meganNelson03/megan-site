Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/art', to: 'art#index'

  get '/under_development', to: 'website#under_development'

  root "website#index"
end
