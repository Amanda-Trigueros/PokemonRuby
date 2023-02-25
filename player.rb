require_relative "pokemon"

class Player
  attr_reader :player, :pokemon
  def initialize(name, pokemon_player, pokemon_name)
    @player = name
    @pokemon = Pokemon.new(pokemon_player, pokemon_name)
    
  end

  def select_move
    # Complete this
  end
end

# Create a class Bot that inherits from Player and override the select_move method

# rety = Player.new("Amanda", "Charmander", "Benja")
# p rety.player
# p rety.pokemon.grey