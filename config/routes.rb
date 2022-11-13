Rails.application.routes.draw do
  
  root 'welcome#home'
  get '/signup', to: 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :book_clubs, only: [:show, :create]
  resources :reviews, only: [:index, :show, :create, :edit, :destroy]
  resources :books, only: [:index, :show]
  post "/login", to: "sessions#create" 
  delete '/logout', to: "sessions#destroy"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!

end
