require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "artists#index action" do
    it "should successfully list the artists that match the search" do
      get :index, params: { :artist_name => "PEPPER" }
      expect(response).to have_http_status(:success)
    end
  end

  # describe "artist#show action" do 
  #   it "should successfully render individual artists top hits" do
  #     get :show, params: { id: '7Ln80lUS6He07XvHI8qqHH' }
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "artist#new action" do
    it "should successfully show the search form" do 
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
