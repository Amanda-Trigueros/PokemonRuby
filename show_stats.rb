require_relative "pokedex/pokemons"


class Statistics
  include Pokedex

  def initialize(stats)
    poke_details = Pokedex::POKEMONS[:species]

    @stats = stats
    @level = 1
    @type = [:type]
    @hp = [:base_stats][:hp]
    @attack = [:base_stats][:attack]
    @defense =[:base_stats][:defense]
    @special_attack = [:base_stats][:special_attack]
    @special_defense = [:base_stats][:special_defense]
    @speed = [:base_stats][:speed]
    @experience = 0

  end

  def show_stats
    @stats.each do |key, value|
      puts "#{key}: #{value}"
    end
  end

end

stats = {
  species: "Bulbasaur",
  user: "player",
  type: %i[grass poison],
  base_exp: 64,
  effort_points: { type: :special_attack, amount: 1 },
  growth_rate: :medium_slow,
  base_stats: { hp: 45, attack: 49, defense: 49, special_attack: 65, special_defense: 65, speed: 45 },
}

test_pokemons = Statistics.new(stats)
test_pokemons.show_stats