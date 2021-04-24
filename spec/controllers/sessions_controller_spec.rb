require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  before (:each) do
    User.create(username: 'Max', password: 'jumbo')
  end

  describe "GET /sessions#create" do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
      it 'creates a new session when a user logs in'  do
        params = ActionController::Parameters.new(username: 'Max', password: 'jumbo')
        allow(controller).to receive(:params).and_return(params)
        post :create
        expect(session[:user_id]).to be
    end
  end

  # The test below checks to see that a 200 response is sent even if incorrect details
  # are entered. This sent a 204 message before the else statement was included in the
  # sessions controller.

  describe "POST /" do
      it 'rerenders the page if incorrect details are entered'  do
        params = ActionController::Parameters.new(username: 'Wrong', password: 'wrong')
        allow(controller).to receive(:params).and_return(params)
        post :create
        expect(response).to have_http_status(200)
    end
  end
end
