require 'rspotify/oauth'

Rails.application.config.to_prepare do
  OmniAuth::Strategies::Spotify.include SpotifyOmniauthExtension
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, 
    ENV["SPOTIFY_CLIENT_ID"],
    ENV["SPOTIFY_CLIENT_SECRET"],
    scope: 'user-top-read user-read-private user-read-email playlist-modify-public playlist-modify-private user-library-read user-library-modify playlist-read-private',
    show_dialog: 'false'
    # callback_path: '/auth/spotify/callback/'
end
