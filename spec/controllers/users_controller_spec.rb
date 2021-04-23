require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /users/new" do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users/create" do
    it 'responds with 200' do
      post :create, params: { user: { username: "jpasquale", password: "bigjoe" } }
      expect(response).to redirect_to(root_url)
    end
  end

  describe 'it creates a user' do
    it 'saves a user to database' do
      post :create, params: { user: { username: "jpasquale", password: "bigjoe" } }
      expect(User.find_by(username: 'jpasquale')).to be
    end
  end
end
