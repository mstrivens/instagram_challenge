require 'rails_helper'

RSpec.feature "Alert", type: :feature do
  scenario "When signing up alert when username not unique" do
    User.create(username: 'jpasquale', password: 'bigjoe')
    visit '/'
    click_link 'Sign Up'
    fill_in "Username", with: "jpasquale"
    fill_in "Password", with: "bigjoe"
    click_button "Submit"
    expect(page).to have_content("Username has already been taken")
  end

  scenario "When signing up alert when username not entered" do
    visit '/'
    click_link 'Sign Up'
    fill_in "Username", with: ""
    fill_in "Password", with: "bigjoe"
    click_button "Submit"
    expect(page).to have_content("Username can't be blank")
  end

  scenario "When signing up alert when password not valid" do
    visit '/'
    click_link 'Sign Up'
    fill_in "Username", with: "jpasquale"
    fill_in "Password", with: ""
    click_button "Submit"
    expect(page).to have_content("Password can't be blank")
  end


  scenario "When logging in alert when username incorrect" do
    User.create(username: 'jpasquale', password: 'bigjoe')
    visit '/'
    click_link 'Log In'
    fill_in "Username", with: "jpas"
    fill_in "Password", with: "bigjoe"
    click_button "Log In"
    expect(page).to have_content("Email or password is invalid")
  end

end
