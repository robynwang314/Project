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

    redirect_to playlist_path(params[:playlist_id])

    # render :action => "show"
  end


  def remove_track
    @spotify_user = load_user
    @playlist = RSpotify::Playlist.find(@spotify_user.id, params[:playlist_id])
    @track = RSpotify::Track.find(params[:track_id])
    @playlist.remove_tracks!([@track])
    redirect_to playlist_path(params[:playlist_id])
  end

  def show
    @spotify_user = load_user
    @playlist = RSpotify::Playlist.find(@spotify_user.id, params[:id])
  end

end


