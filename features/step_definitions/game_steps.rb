Given /^I have games name (.+)$/ do |names|	
  names.split(', ').each do |name|
  	Game.create!(:name => name)
  end
end
Given /^I login as (.+) with (.+)$/ do |email, password|
	step "I go to create user"
	step "I fill in \"Email\" with \"#{email}\""
	step "I fill in \"Password\" with \"#{password}\""
	step "I fill in \"user_password_confirmation\" with \"#{password}\""
	step "I press \"Sign up\""
	step "I go to make login"
	step "I fill in \"Email\" with \"#{email}\""
	step "I fill in \"Password\" with \"#{password}\""
end
