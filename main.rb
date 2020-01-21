require 'require_all'

require_relative './lib/noun'

require_all 'lib'

player = Player.new("Room 1")
p player.location
player.move_to "Other Room"
p player.location