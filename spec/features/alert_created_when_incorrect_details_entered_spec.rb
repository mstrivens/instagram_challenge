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
end
#
# RSpec.feature "Alert", type: :feature do
#   scenario "Alert when username not unique" do
#     User.create(username: '', password: 'bigjoe')
#     visit '/'
#     click_link 'Log In'
#     fill_in "Username", with: "jpasquale"
#     fill_in "Password", with: "bigjoe"
#     click_button "Log In"
#     expect(page).to have_content("Hello, jpasquale!")
#   end
# end
