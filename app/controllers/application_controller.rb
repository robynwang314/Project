class ApplicationController < ActionController::Base

  private
  def load_user
    u = User.find_by_email(session[:active_email])
    @user_hash = u.spotify_hash
    @spotify_user = RSpotify::User.new(u.spotify_hash)
  end
  
end
