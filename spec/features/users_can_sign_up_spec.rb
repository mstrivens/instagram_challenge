require 'rails_helper'

RSpec.feature "SignUp", type: :feature do
  scenario "User can sign up to instagram" do
    signup
    expect(page).to have_content("Hello, jpasquale!")
  end
end
