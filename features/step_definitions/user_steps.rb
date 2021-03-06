Given /^I create user as (.+) with (.+)$/ do |email, password|
  visit new_user_registration_path
  fill_in "Email", with: email
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password
  click_button "Sign up"
end

Given /^I login as (.+) with (.+)$/ do |email, password|
	visit new_user_session_path
	fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
end

Given /^I have users email (.+)$/ do |emails|	
  emails.split(', ').each do |email|
  	User.create!(email: email, password: "12345678")
  end
end