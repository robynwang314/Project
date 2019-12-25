require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "home#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
