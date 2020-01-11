class UsersController < ApplicationController

  require 'rspotify/oauth'

  def index
    if request.env and request.env['omniauth.auth'] then
      @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      @user_hash = @spotify_user.to_hash
     
      begin
        u = User.find_by_email(@user_hash["email"])
      end
      u = User.new if u.nil?
      u.spotify_hash = @user_hash
      u.email = @user_hash["email"]
      u.token = @user_hash["credentials"]["token"]
      u.save
      session[:active_email] = u.email
    elsif not session[:active_email].nil?
      u = User.find_by_email(session[:active_email])
      @user_hash = u.spotify_hash
      @spotify_user = RSpotify::User.new(u.spotify_hash)
    else
      redirect_to root_path and return
    end
    @top_artist = get_top_artist(@spotify_user)
    @top_track = get_top_track(@spotify_user)
  end

  def destroy
    session[:active_email] = nil
    redirect_to root_path
  end 
  private
  def get_top_artist(u) 
    ret = "No current top artist"
    return ret if not u
    return ret if not u.top_artists.any?
    return u.top_artists.first.name
  end
  def get_top_track(u)
    ret = "No current top track"
    return ret if not u
    return ret if not u.top_tracks.any?
    return u.top_tracks.first.name
  end
end
