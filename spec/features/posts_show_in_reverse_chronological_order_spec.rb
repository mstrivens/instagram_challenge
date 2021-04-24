require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can view most recent posts first" do
    signup
    click_link "New Post"
    fill_in 'Title', with: "1"
    fill_in "Message", with: "First post!"
    click_button "Submit"
    click_link "New Post"
    fill_in "Title", with: "2"
    fill_in "Message", with: "This should appear first!"
    click_button "Submit"
    expect("This should appear first!").to appear_before("First post!")
  end
end
