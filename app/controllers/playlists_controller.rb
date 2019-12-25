class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.where(player_id: params[:player_id]) 
    @playersid = params[:player_id]
  end

  # GET /playlists/1
  def show
    @playlist.player = Player.find(params[:player_id])
    @playlist = Playlist.find(params[:id])
    @playerid = params[:player_id]
    redirect_to player_playlist_songs_url(@playlist.player, @playlist)
  end

  def all
    @playerid = params[:player_id]
    @playlists = Playlist.all
  end

  def set_playlist
    @playerid = params[:player_id]
    @playlist = Playlist.find(params[:id])
  end

  # GET /playlists/new
  def new
    @playerid = params[:player_id]
    @playlist = Playlist.new
    @playlist.player = Player.find(params[:player_id])
  end

  # GET /playlists/1/edit
  def edit
    @playerid = params[:player_id]
    @playlist = Playlist.find(params[:id])
    @playlist.player = Player.find(params[:player_id])
  end

  # POST /playlists
  def create
    @playerid = params[:player_id]
    @playlist = Playlist.new(name: playlist_params[:name])
    @playlist.player = Player.find_by(id: params[:player_id])
    if @playlist.save
      @playlist.player.playlists.append(@playlist)
      redirect_to player_playlists_url(@playlist.player)
    else
      render :new
    end
  end

  # PATCH/PUT /playlists/1
  def update
    @playerid = params[:player_id]
    if @playlist.update(playlist_params)
      redirect_to player_playlists_url(@playlist.player)
    end
  end

  # DELETE /playlists/1
  def destroy
    @playerid = params[:player_id]
    @playlist.destroy
    redirect_to player_playlists_url(@playlist.player)
  end

  private
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_params
      params.require(:playlist).permit(:name, :player_id)
    end
end


