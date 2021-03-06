require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

let(:user) { create(:user) }

before :each do
  sign_in user

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end
 end
end
