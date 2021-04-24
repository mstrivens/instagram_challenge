require 'rails_helper'

RSpec.feature "Log In", type: :feature do
  scenario "Users type incorrect username" do
    User.create(username: 'jpasquale', password: 'bigjoe')
    visit '/'
    click_link 'Log In'
    fill_in "Username", with: "jpas"
    fill_in "Password", with: "bigjoe"
    click_button "Log In"
    expect(page).to have_field("Username")
  end
end

RSpec.feature "Log In", type: :feature do
  scenario "Users type incorrect password" do
    User.create(username: 'jpasquale', password: 'bigjoe')
    visit '/'
    click_link 'Log In'
    fill_in "Username", with: "jpasqua"
    fill_in "Password", with: "bigj"
    click_button "Log In"
    expect(page).to have_field("Username")
  end
end
