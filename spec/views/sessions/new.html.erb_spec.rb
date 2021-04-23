require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  describe 'login form' do
    it 'contains a username field' do
      assign(:username, User.create(username: 'Max', password: 'jumbo'))

      render

      expect(rendered).to have_field(:username)
      expect(rendered).to have_field(:password)
      expect(rendered).to have_button("Log In")
    end
  end
end
