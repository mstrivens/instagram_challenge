require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before (:each) do
    User.create()
  end

  describe "GET /sessions/new" do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it 'responds with 200' do
      post :create, params: { user: { username: "jpasquale", password: "bigjoe" } }
      expect(response).to redirect_to(root_url)
    end
  end
end
