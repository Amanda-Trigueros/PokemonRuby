# require neccesary files

class Player
  include GetInput
  def initialize(name, pokemon_player, pokemon_name)
    @player = name
    @pokemon = Pokemon.new(pokemon_player, pokemon_name)
  end

  def select_move
    # Complete this
  end
end

# Create a class Bot that inherits from Player and override the select_move method
