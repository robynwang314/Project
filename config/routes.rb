Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "home#index"
  get '/auth/spotify/callback', to: 'users#index'
  resources :artists, only: [:index, :show, :new] do
    resources :songs, only: [:new, :create]
  end
  post "/playlists/add_track", to: 'playlists#add_track'
  delete "/playlists/remove_track", to: 'playlists#remove_track'
  resources :users, only: [:index, :destroy]
  resources :playlists, only: [:index, :new, :show]
  
end
