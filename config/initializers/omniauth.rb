require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, 
           ENV["SPOTIFY_CLIENT_ID"], 
           ENV["SPOTIFY_CLIENT_SECRET"],
           scope: 'user-top-read user-read-private user-read-email playlist-modify-public user-library-read user-library-modify', 
           show_dialog: 'true', 
           callback_path: '/auth/spotify/callback/'
end
