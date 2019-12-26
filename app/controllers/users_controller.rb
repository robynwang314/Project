class UsersController < ApplicationController
  # RSpotify::authenticate(ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"])
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
  end

end
