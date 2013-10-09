Given /^I have games name (.+)$/ do |names|	
  names.split(', ').each do |name|
  	Game.create!(:name => name)
  end
end

Then /^I should comfirm a javascript dialog$/ do 
	page.driver.browser.switch_to.alert.accept
	# Cancela a o alert page.driver.browser.switch_to.alert.dismiss
end
