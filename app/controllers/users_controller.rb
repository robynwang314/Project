class UsersController < ApplicationController
 # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
 
  require 'rspotify/oauth'


  def index
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
  end

end
