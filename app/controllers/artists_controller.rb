class ArtistsController < ApplicationController
require 'rspotify'
 
def index
  a = params[:artist_name]
  redirect_to root_path and return if load_user.nil? and (a.nil? || a.empty?)
  redirect_to new_artist_path and return if a.empty?
  @artists = RSpotify::Artist.search(a)
end
 
def show
  if
    u = User.find_by_email(session[:active_email])
    @user_hash = u.spotify_hash
    @spotify_user = RSpotify::User.new(u.spotify_hash)
    @playlists = @spotify_user.playlists
    @artist = RSpotify::Artist.find(params[:id])
  else
    @artist = RSpotify::Artist.find(params[:id])
    flash[:error] = '***'
  end
end


def new
end
  
end
