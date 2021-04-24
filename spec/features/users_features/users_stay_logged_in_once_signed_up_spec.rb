require 'rails_helper'

RSpec.feature "SignUp", type: :feature do
  scenario "Users stay logged in once signed up" do
    signup
    expect(page).not_to have_content("Sign Up")
    expect(page).to have_content("Log Out")
  end
end
