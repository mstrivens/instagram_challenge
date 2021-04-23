require 'rails_helper'

RSpec.feature "Log In", type: :feature do
  scenario "Users can log in and create a session" do
    User.create(username: 'jpasquale', password: 'bigjoe')
    visit '/'
    click_link 'Log In'
    fill_in "Username", with: "jpasquale"
    fill_in "Password", with: "bigjoe"
    click_button "Log In"
    expect(page).to have_content("Hello, jpasquale!")
  end
end
