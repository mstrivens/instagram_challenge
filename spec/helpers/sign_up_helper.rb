def signup
  visit "/"
  click_link "Sign Up"
  fill_in "Username", with: "jpasquale"
  fill_in "Password", with: "bigjoe"
  click_button "Submit"
end
