Rails.application.routes.draw do
  
  post 'users/create', to: "users#create"
  post "/auth/create", to: "auth#create"
  get "/auth/show", to: "auth#show"

  get "/favorites", to: "favorites#my_favorites"
  post "/favorites", to: "favorites#add_favorites"
  
  post '/movies/search', to: "search#index"
  get '/movies/search', to: "search#index"
  resources :movies, only: [:index, :show]
  post '/movies', to: "movies#index"
  post '/movies/:id', to: "movies#show"
 
  resources :credits, only: [:index]

  post '/credits', to: "credits#index"

  resources :trailers, only: [:index]

  post '/trailers', to: "trailers#index"

end
