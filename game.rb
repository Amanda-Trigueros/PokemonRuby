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

    pokemon_player = select_pokemon.capitalize
    puts "\n You selected #{pokemon_player.upcase}. Great choice!"
    pokemon_name = get_input("Give your pokemon a name:")
    @player = Player.new(name, pokemon_player, pokemon_name)
    #bot = Bot.new
   

    puts "#{name.upcase}, raise your young #{pokemon_name.upcase} by making it fight!"
    puts "When you feel ready you can challenge BROCK, the PEWTER's GYM LEADER"

    action = nil
    #p action
    while action != "Exit"
      action = menu
          case action
          when "Train"
          puts "train"
         # action = menu
          when "Leader"
            puts "challenge_leader"
         # action = menu
          when "Stats"
            show_stats
         # action = menu
          when "Exit"
          puts "Thanks for playing Pokemon Ruby. This game was creater with love by: Jorge and Amanda"
          #action = menu
          #break 
          else 
          puts "Invalid action"
          #action = menu
          end
        end
  end

  
 #end
  # def train
     # Complete this
   #end

#   def challenge_leader
#     # Complete this
#   end

  def show_stats
    puts "#{@player.pokemon.pokemon_name}: "
    puts "Kind: #{@player.pokemon.species}"
    puts "Level: #{@player.pokemon.level}"
    puts "Type: #{@player.pokemon.type.join(" ")}" 
    puts "Stats: "
    @player.pokemon.grey. each do |key, value|
      puts "#{key.capitalize}: #{value}"
    end

   
    # puts "Experience Points: #{experience}" 
  end

#   def goodbye
#     # Complete this
#   end

   def menu
    puts "#{'-' * 30} Menu #{'-' * 30}"
    puts "\n 1.Stats         2.Train         3.Leader         4.Exit"
    print ">  " 
    x = gets.chomp.strip
    x
   end
end





