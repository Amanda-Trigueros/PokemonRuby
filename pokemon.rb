require_relative "pokedex/pokemons"


class Pokemon
attr_reader :grey, :pokemon_name, :species, :level, :type, :grey, :moves, :speed, :base_exp
attr_accessor :current_move, :experience

  # (complete parameters)
  def initialize(pokemon_player, pokemon_name)
    my_hash = Pokedex::POKEMONS[pokemon_player] #impresion hash

    @grey = my_hash[:base_stats]
    @pokemon_name = pokemon_name
    @species = my_hash[:species]
    @level = rand(1..5)
    @type = my_hash[:type]
    @experience = 0
    @hp = my_hash[:base_stats][:hp]
    @moves = my_hash[:moves]
    @speed = my_hash[:base_stats][:speed]
    @health = nil
    @current_move = nil
  

    # Retrieve pokemon info from Pokedex and set instance variables
    # Calculate Individual Values and store them in instance variable
    # Create instance variable with effort values. All set to 0
    # Store the level in instance variable
    # If level is 1, set experience points to 0 in instance variable.
    # If level is not 1, calculate the minimum experience point for that level and store it in instance variable.
    # Calculate pokemon stats and store them in instance variable
  end

  def prepare_for_battle
    @health = @hp
    @current_move = nil
  end

  def receive_damage(damage)
    @health -= damage
  end
  
  def update_ex
    (@base_experience * @level / 7.0).floor
  end 

  def set_current_move
    # Complete this
  end

  def fainted?
    !@health.positive?
  end

  def attack(target)

    hit = @current_move[:accuracy] >= rand(1..100)
    damage = @current_move[:power]
      
    if hit
      puts "#{@pokemon_name} used #{@current_move[:name].upcase}"
      target.receive_damage(damage)
      puts "And it hit #{target.pokemon_name} with #{damage} damage"
    else
      puts "It's not very efective"
      puts "It hit #{target.pokemon_name} with #{damage} damage"
    end 
  end
end








    # Print attack message 'Tortuguita used MOVE!'
    # Accuracy check
    # If the movement is not missed
    # -- Calculate base damage
    # -- Critical Hit check
    # -- If critical, multiply base damage and print message 'It was CRITICAL hit!'
    # -- Effectiveness check
    # -- Mutltiply damage by effectiveness multiplier and round down. Print message if neccesary
    # ---- "It's not very effective..." when effectivenes is less than or equal to 0.5
    # ---- "It's super effective!" when effectivenes is greater than or equal to 1.5
    # ---- "It doesn't affect [target name]!" when effectivenes is 0
    # -- Inflict damage to target and print message "And it hit [target name] with [damage] damage""
    # Else, print "But it MISSED!"
  

  def increase_stats(target)
    # Increase stats base on the defeated pokemon and print message "#[pokemon name] gained [amount] experience points"

    # If the new experience point are enough to level up, do it and print
    # message "#[pokemon name] reached level [level]!" # -- Re-calculate the stat
  end

  # private methods:
  # Create here auxiliary methods

#testino = Pokemon.new("Charmander", "Jose Luis")
#p testino