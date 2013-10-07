def path_to(page_name)
  case page_name
  
  when /the homepage/
    root_path
  when /the list of game/
    games_path
  when /create user/
  	new_user_registration_path
  when /make login/
  	new_user_session_path
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end