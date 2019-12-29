class UsersController < ApplicationController

  require 'rspotify/oauth'

  def index
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @playlists = @spotify_user.playlists
  end

end
