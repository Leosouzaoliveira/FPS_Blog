class Game < ActiveRecord::Base
  attr_accessible :character, :name, :release_date
end
