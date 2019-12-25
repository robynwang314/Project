class UsersController < ApplicationController
  
  def index
    @spotify_user = RSpotify::User.new
    @spotify_email = @spotify_user.email
    new_player = Player.new(email: @spotify_email)
    new_player.save unless Player.exists?(email: @spotify_email)
    @playerid = (Player.find_by(email: @spotify_email)).id
  end
end
