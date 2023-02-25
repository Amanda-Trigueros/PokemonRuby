require_relative "pokedex/pokemons"

module Statistics

stats = Pokedex::POKEMONS[pokemon_player]

def show_stats
  name = pokemon_name
  level = 1
  species = stats[:species]
  type = stats[:type]
  hp = stats[:base_stats][:hp]
  attack = stats[:base_stats][:attack]
  defense =stats[:base_stats][:defense]
  special_attack = stats[:base_stats][:special_attack]
  special_defense = stats[:base_stats][:special_defense]
  speed = stats[:base_stats][:speed]
  experience = 0
     

  puts "#{name}:" 
  puts "Kind: #{species}"
  puts "Level: #{level}"
  puts "Type: #{type}" 
  puts "Stats: "
  puts "HP: #{hp}"
  puts "Attack: #{attack}"
  puts "Defense: #{defense}" 
  puts "Special Attack: #{special_attack} "
  puts "Special Defense: #{special_defense}"
  puts "Speed: #{speed}"
  puts "Experience Points: #{experience}" 
end

end