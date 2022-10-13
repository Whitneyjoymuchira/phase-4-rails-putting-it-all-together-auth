Rails.application.routes.draw do
  resources :recipes
  post '/signup', to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/me', to: "users#show"
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get '/recipes', to: 'recipes#index'
  post '/recipes', to: 'recipes#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
