Rails.application.routes.draw do
  
  get "/", to: 'welcome#home'
  get "/me", to: "users#show"
  get '/signup', to: 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout', to: "sessions#destroy"
  resources :book_clubs, only: [:show, :create]
  resources :reviews, only: [:index, :show, :create, :edit, :destroy]
  resources :books, only: [:index, :show]

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!

end
