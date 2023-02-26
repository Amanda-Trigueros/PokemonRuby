require_relative "player"
require_relative "get_input"
require_relative "game"
require_relative "pokemon"
require_relative "pokedex/pokemons"

class Battle
  attr_reader :base_experience
  include GetInput
  def initialize(player, bot)
    @player = player
    @bot = bot
    @player_pokemon = @player.pokemon
    @bot_pokemon = @bot.pokemon
  end

  def menu_again
    @menu = Game.new 
    @menu.menu
  end

  def fight_satus
    puts "#{@player.player.capitalize}'s #{@player_pokemon.pokemon_name.capitalize} - Level #{@player_pokemon.level}
       HP: #{@player_pokemon.grey[:hp]}"
       puts "Random Person's #{@bot_pokemon.species} - Level #{@bot_pokemon.level}
       HP: #{@bot_pokemon.grey[:hp]}"
   end

 
  def start
    @player_pokemon.prepare_for_battle
    @bot_pokemon.prepare_for_battle

    puts "#{@player.player} challenges Random Person for training"
    puts "Random Person has #{@bot_pokemon.species} level #{@bot_pokemon.level} "
    puts "What do you want to do now?"
    puts "1.Fight                     2.Leave"
    selection = get_input("") 

    if selection == "Fight" 
      puts "Random Person sent out #{@bot_pokemon.species.upcase}!"
      puts "#{@player.player.upcase} sent out #{@player_pokemon.pokemon_name.upcase}!"
      puts"#{'-' * 25} Battle Start! #{'-' * 25}"

      fight_satus     
    else
    menu_again
   end

   pokemon_fight

   @winner = @player_pokemon.fainted? ? @bot_pokemon : @player_pokemon
   @loser = @winner == @player_pokemon ? @bot_pokemon : @player_pokemon
   #p Pokedex::POKEMONS[@loser.species][:base_exp]
   increase_experience

    puts  "#{'-' * 65}"
    puts "#{@loser.pokemon_name} FAINTED!"
    puts  "#{'-' * 65}"
    puts "#{@winner.pokemon_name} WINS!"
    puts "#{@winner.pokemon_name} gained #{@gained_experience} experience points"
    puts "#{@winner.pokemon_name} reached level X"
    puts "#{'-' * 25} Battle Ended! #{'-' * 25}\n"

    menu_again
  end

  def increase_experience
    base_experience = Pokedex::POKEMONS[@loser.species][:base_exp]
    level = @loser.level
    p base_experience
    p level
    @gained_experience = (base_experience * level / 7.0).floor
    @winner.experience = @winner.experience + @gained_experience
  end 

  def pokemon_fight
    until @player_pokemon.fainted? || @bot_pokemon.fainted?
      @player.select_move
      @bot.select_move
      
      first = select_first(@player_pokemon, @bot_pokemon)
      second = first == @player_pokemon ? @bot_pokemon : @player_pokemon
  
      first.attack(second)
      puts "#{'-' * 65}"
      second.attack(first) unless second.fainted?
    
    end
  end 

  def select_first(player_pokemon, bot_pokemon)
    player_move = player_pokemon.current_move
    bot_move = bot_pokemon.current_move

    if player_move[:priority] > bot_move[:priority]
      player_pokemon
    elsif player_move[:priority] < bot_move[:priority]
      bot_pokemon
    elsif player_pokemon.speed > bot_pokemon.speed
      player_pokemon
    elsif player_pokemon.speed < bot_pokemon.speed
      bot_pokemon
    else
      [player_pokemon, bot_pokemon].sample
    end
  end
end 

rety = Player.new("Amanda", "Charmander", "Benja")
rety2 = Bot.new
prueba1 = Battle.new(rety, rety2)
prueba1.start 