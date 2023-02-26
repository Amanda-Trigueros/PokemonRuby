require_relative "pokemon"
require_relative "get_input"
require_relative "pokedex/moves"

class Player
  include GetInput
  attr_reader :player, :pokemon

  def initialize(name, pokemon_player, pokemon_name)
    @player = name
    @pokemon = Pokemon.new(pokemon_player, pokemon_name)
  end

  def select_move
    move = get_with_options( "#{@player.capitalize}, select your move", @pokemon.moves)
    @pokemon.current_move = Pokedex::MOVES[move]
  end
end

class Bot < Player
  def initialize
    bot_pokemons = Pokedex::POKEMONS.keys.sample 
    super("Random Person", bot_pokemons, bot_pokemons.capitalize)
  end

  def select_move
    move = @pokemon.moves.sample
    @pokemon.current_move = Pokedex::MOVES[move]
  end
end

# rety = Player.new("Amanda", "Charmander", "Benja")
# p rety.player
# p rety.pokemon.grey
prueba = Bot.new
prueba 