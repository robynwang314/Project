class UsersController < ApplicationController

  require 'rspotify/oauth'

  def index
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    user_hash = @spotify_user.to_hash
    @playlists = @spotify_user.playlists
 
  end

end
