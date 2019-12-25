Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players do 
    resources :recommendations
    resources :playlists do
      resources :songs
    end
  end


  root "home#index"
  get '/auth/spotify/callback', to: 'users#index'
  post '/songs' => 'songs#create'
  get '/playlists/spotify' => 'playlists#spotify'
  resources :artists, only: [:index, :show]
  resources :users, only: [:index]
end
