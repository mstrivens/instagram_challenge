require 'rails_helper'

RSpec.feature "SignUp", type: :feature do
  scenario "User can sign up to instagram" do
    visit "/"
    click_link "Sign Up"
    fill_in "Username", with: "jpasquale"
    fill_in "Password", with: "bigjoe"
    click_button "Submit"
    expect(page).to have_content("Hello, jpasquale!")
  end
end
