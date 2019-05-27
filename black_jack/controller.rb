require './black_jack/player'
require './black_jack/card'

def create_player
  @player = Player.new
  @player.draw
  @player.draw
  @player
end
