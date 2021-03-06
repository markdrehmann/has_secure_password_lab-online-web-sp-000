Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"

  get '/', to: 'users#home'
  get '/users/new', to: 'users#new'
  post '/users', to: "users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
