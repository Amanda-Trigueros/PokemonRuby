require_relative "get_input"
require_relative "player"
require_relative "pokedex/pokemons"

class Game
  include GetInput

  def start
    print "    
    #$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
    #$#$#$#$#$#$#$                               $#$#$#$#$#$#$#
    #$##$##$##$ ---        Pokemon Ruby         --- #$##$##$#$#
    #$#$#$#$#$#$#$                               $#$#$#$#$#$#$#
    #$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
    
    Hello there! Welcome to the world of POKEMON! My name is OAK!
    People call me the POKEMON PROF!
    
    This world is inhabited by creatures called POKEMON! For some
    people, POKEMON are pets. Others use them for fights. Myself...
    I study POKEMON as a profession. "
    name = get_input("First, what's your name?")
    
    
    print "Right! So your name is #{name}!
    Your very own POKEMON legend is about to unfold! A world of
    dreams and adventures with POKEMON awaits! Let's go!
    Here, #{name}! There are 3 POKEMON here! Haha!
    When I was young, I was a serious POKEMON trainer.
    In my old age, I have only 3 left, but you can have one!"

    pokemon_player = select_pokemon
    puts "You selected #{pokemon_player}. Great choice!"
    pokemon_name = get_input("Give your pokemon a name:")

    player = Player.new(name, pokemon_player, pokemon_name)
    bot = Bot.new


    
  end

  private

  def select_pokemon
    pokemons = Pokedex::POKEMONS.select { |_key, value| value[:species]  }
    valid_pokemons = pokemons.keys
    get_with_options("Choose:", valid_pokemons)
  end
    # Suggested game flow
#     action = menu
#     until action == "Exit"
#       case action
#       when "Train"
#         train
#         action = menu
#       when "Leader"
#         challenge_leader
#         action = menu
#       when "Stats"
#         show_stats
#         action = menu
#       end
#     end

#     goodbye
#   end

#   def train
#     # Complete this
#   end

#   def challenge_leader
#     # Complete this
#   end

#   def show_stats
#     # Complete this
#   end

#   def goodbye
#     # Complete this
#   end

#   def menu
#     # Complete this
#   end
end


game = Game.new
game.start



