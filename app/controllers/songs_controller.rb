class SongsController < ApplicationController
  def index
    @songs = Song.where(playlist_id: params[:playlist_id]) 
    @song_artist_name = @songs[@songs.length-1].artist_name unless @songs.empty?
    @song_artist_name = '' if @songs.empty?
    @artist = RSpotify::Artist.search(@song_artist_name).first unless @songs.empty?
    artist_tracks = @artist.top_tracks('US')[0].id unless @songs.empty?
    recommendations = RSpotify::Recommendations.generate(limit: 21, seed_tracks:[artist_tracks], seed_artists: [@artist.id]) unless @songs.empty?
    @r_tracks = recommendations.tracks unless @songs.empty?
    @r_tracks = [] if @songs.empty?
  end

  # GET /songs/1
  def show
  end

  def all
    @songs = Song.all
  end

  # GET /songs/new
  def new
    @song = Song.new
    @song.playlist = Playlist.find(params[:playlist_id])
  end

  # POST /songs
  def create
    @song = Song.new(name: song_params[:name], artist_name: song_params[:artist_name])
    @song.playlist = Playlist.find(params[:playlist_id])
    @song.playlist.player = Player.find(params[:player_id])
    if (@song.in_spotify? && !@song.playlist.songs.include?(@song))
      @song.playlist.songs.append(@song)
      @song.save
      redirect_to player_playlist_songs_url(@song.playlist.player,  @song.playlist, @song)
    else
      render :new
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
    redirect_to player_playlist_songs_url(@song.playlist.player, @song.playlist)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :playlist_id, :artist_name)
  end
end
