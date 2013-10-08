Given /^I have games name (.+)$/ do |names|	
  names.split(', ').each do |name|
  	Game.create!(:name => name)
  end
end
