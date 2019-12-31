class PlaylistsController < ApplicationController
require 'rspotify'

  def index
    u = User.find_by_email(session[:active_email])
    @user_hash = u.spotify_hash
    @spotify_user = RSpotify::User.new(u.spotify_hash)
    @playlists = @spotify_user.playlists
  end

  def new
    
  end
  
  def create
    @spotify_user.create_playlist!
  end 
end


