require_relative "get_input"
require_relative "player"
require_relative "pokedex/pokemons"

class Game
  include GetInput
  attr_reader :pokemons, :name

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
    I study POKEMON as a profession. \n \n"

     name = get_input("First, what's your name?\n")
    
    
    print "\n Right! So your name is #{name.upcase}!
    Your very own POKEMON legend is about to unfold! A world of
    dreams and adventures with POKEMON awaits! Let's go!
    Here, #{name.upcase}! There are 3 POKEMON here! Haha!
    When I was young, I was a serious POKEMON trainer.
    In my old age, I have only 3 left, but you can have one!\n\n"

    def select_pokemon
      pokemons = Pokedex::POKEMONS.select { |_key, value| value[:user] == "player" }
      valid_pokemons = pokemons.keys
      get_with_options("Choose:", valid_pokemons)
    end

    pokemon_player = select_pokemon.downcase
    puts "\nYou selected #{pokemon_player.upcase}. Great choice!"
    pokemon_name = get_input_pokemon_name("Give your pokemon a name:")

    puts "#{name.upcase}, raise your young #{pokemon_name.upcase} by making it fight!"
    puts "When you feel ready you can challenge BROCK, the PEWTER's GYM LEADER"
    
    puts "#{'-' * 30} Menu #{'-' * 30}"
    puts "\n 1.Stats         2.Train         3.Leader         4.Exit"
    puts ">  " 
    gets.chomp.strip.downcase
    


    player = Player.new(name, pokemon_player, pokemon_name)
    #bot = Bot.new
    
  end

  private

 

 ##
  # 
  #   action = nil
  #   while action != "Exit"
  #    action = menu
#
  #     case action
  #     when "Train"
  #      puts "train"
  #     when "Leader"
  #       puts "challenge_leader"
  #     when "Stats"
  #       puts "show_stats"
  #     when "Exit"
  #      puts "Thanks for playing Pokemon Ruby. This game was creater with love by: Jorge, Odilón, Wilder and Amanda"
  #      break 
  #     else 
  #      puts "Invalid action"
  #     end
  #   end
     
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



