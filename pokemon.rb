
require_relative "pokedex/pokemons"


class Pokemon

attr_reader :grey, :pokemon_name, :species, :level, :type, :grey
  # (complete parameters)
  def initialize(pokemon_player, pokemon_name)
    my_hash = Pokedex::POKEMONS[pokemon_player] #impresion hash

    @grey = my_hash[:base_stats]
    @pokemon_name = pokemon_name
    @species = my_hash[:species]
    @level = rand(1..5)
    @type = my_hash[:type]
    # @hp = stats[:base_stats][:hp]
    # @attack = stats[:base_stats][:attack]
    # @defense = stats[:base_stats][:defense]
    # @special_attack = stats[:base_stats][:special_attack]
    # @special_defense = stats[:base_stats][:special_defense]
    # @speed = stats[:base_stats][:speed]
    # @experience = 0

    # Retrieve pokemon info from Pokedex and set instance variables
    # Calculate Individual Values and store them in instance variable
    # Create instance variable with effort values. All set to 0
    # Store the level in instance variable
    # If level is 1, set experience points to 0 in instance variable.
    # If level is not 1, calculate the minimum experience point for that level and store it in instance variable.
    # Calculate pokemon stats and store them in instance variable
  end

  def prepare_for_battle
    # Complete this
  end

  def receive_damage
    # Complete this
  end

  def set_current_move
    # Complete this
  end

  def fainted?
    # Complete this
  end

  def attack(target)
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
  end

  def increase_stats(target)
    # Increase stats base on the defeated pokemon and print message "#[pokemon name] gained [amount] experience points"

    # If the new experience point are enough to level up, do it and print
    # message "#[pokemon name] reached level [level]!" # -- Re-calculate the stat
  end

  # private methods:
  # Create here auxiliary methods
end

# testino = Pokemon.new("Charmander", "Jose Luis")
# p testino.grey