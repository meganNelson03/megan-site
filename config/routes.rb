Rails.application.routes.draw do
  # devise_for :users
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users, :skip => [:registrations] 
    as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end


  # website pages
  get '/about', to: 'website#about', as: 'about'
  get '/art', to: 'art#index'
  get '/under_development', to: 'website#under_development'

  # contact
  post '/contact', to: 'contact_requests#create', as: 'contact_request'

  # projects
  get '/projects', to: 'projects#index'
  post '/projects', to: 'projects#index'
  post '/projects/update_filters', to: 'projects#update_filters'
  post '/projects/toggle_all', to: 'projects#toggle_all'
  get '/project/:id', to: 'projects#show', as: 'project'

  post 'admin/projects/sort_priority', to: 'admin/projects#sort_priority'

  namespace :admin do
    root "projects#index"
    resources :projects
    resources :categories
  end

  root "website#index"
end
