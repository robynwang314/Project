class PlaylistsController < ApplicationController
require 'rspotify'

  def index
      u = User.find_by_email(session[:active_email])
      @user_hash = u.spotify_hash
      @spotify_user = RSpotify::User.new(u.spotify_hash)
  end

  def new
  end
  
end


