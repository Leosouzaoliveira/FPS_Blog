class Game < ActiveRecord::Base
  attr_accessible :characters, :history, :name, :release_date, :weapons
end
