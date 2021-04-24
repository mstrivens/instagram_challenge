require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before (:each) do
    @user = User.create(username: 'Max', password: 'jumbo')
  end

  describe "GET /new" do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /posts#create" do
    it 'creates a post' do
      post :create, params:  { post: { title: "Begin", message: "The start", user_id: @user.id } }
      expect(Post.find_by(title: "Begin")).to be
    end
  end
end
