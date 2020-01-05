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
    elsif not session[:active_email].empty?
      u = User.find_by_email(session[:active_email])
      @user_hash = u.spotify_hash
      @spotify_user = RSpotify::User.new(u.spotify_hash)
    end
  end

  def destroy
     @spotify_user = load_user
     @spotify_user.destroy
     redirect_to root_path
  end

end
