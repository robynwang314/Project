class ArtistsController < ApplicationController
require 'rspotify'

def index
  if !(params[:artist_name]).empty?
    @artists = RSpotify::Artist.search(params[:artist_name])
  else
    redirect_to new_artist_path
  end
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
