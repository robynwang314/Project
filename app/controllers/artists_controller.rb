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
  @artist = RSpotify::Artist.find(params[:id])
end

def new
end
  
end
