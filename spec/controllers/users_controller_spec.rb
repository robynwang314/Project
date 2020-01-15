require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "users#index action" do
    it "should require users to be logged in" do
      get :index
      expect(response).to redirect_to root_path
    end

  #   it "should successfully show the page" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end

  #   # it "should create new user" do
  #   #   post :index
  #   #   expect(response).to have_http_status(:success)
  #   # end
  end

  describe "users#destroy action" do
    it "should log a user out" do
      delete :destroy
      expect(session[:active_email]).to eq nil
      expect(response).to redirect_to root_path
    end
  end
  
end
