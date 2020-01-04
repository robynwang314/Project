class PlaylistsController < ApplicationController
require 'rspotify'

  def index
    @spotify_user = load_user
    @playlists = @spotify_user.playlists
  end

  def add_track
    @spotify_user = load_user
    @playlist = RSpotify::Playlist.find(@spotify_user.id, params[:playlist_id])
    @track = RSpotify::Track.find(params[:track_id])
    @playlist.add_tracks!([@track])

    render :action => "show"
  end

  def show
    @spotify_user = load_user
    @playlist = RSpotify::Playlist.find(@spotify_user.id,params[:id])
  end

  private

  def playlist_params
    params.permit(:songs, :user_id)
  end

end


