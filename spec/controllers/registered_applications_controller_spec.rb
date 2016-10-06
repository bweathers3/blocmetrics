require 'rails_helper'

RSpec.describe RegisteredApplicationsController, type: :controller do

  let(:user) { create(:user) }
  let(:registered_application) { create(:registered_application) }

  before :each do
    sign_in user


  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end


 describe "DELETE destroy" do
   it "deletes the registered application" do
     delete :destroy, {id: registered_application.id}
     count = RegisteredApplication.where({id: registered_application.id}).size
     expect(count).to eq 0
   end

   it "redirects to registered applications index" do
     delete :destroy, {id: registered_application.id}
     expect(response).to redirect_to registered_applications_path
   end
 end




 end
end
