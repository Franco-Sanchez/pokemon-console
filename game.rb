require_relative "player"
require_relative "battle"
require_relative "pokedex"
require_relative "prompt"

class Game
  include Pokedex
  include Prompt

  def start
    player_data = welcome
    @player = Player.new(player_data[:name], "user", player_data[:pokemon_specie],
                         player_data[:pokemon_name])
    selected_action
    goodbye
  end

  def train
    pokemon_random = POKEMONS.keys.sample
    bot = Bot.new("Random Person", "random", pokemon_random)
    Battle.new(@player, bot).start
  end

  def challenge_leader
    leader = Bot.new("Brock", "leader", "Onix")
    Battle.new(@player, leader).start
  end

  def show_stats
    Stats.show_stats_message(@player.pokemon_name, @player.pokemon_specie)
  end

  def menu
    menu_message
    gets.chomp
  end

  private

  def welcome
    welcome_message
    player_name
    name = gets.chomp
    select_pokemon(name)
    pokemon_specie = gets.chomp
    give_pokemon_name(pokemon_specie)
    pokemon_alias = gets.chomp
    pokemon_name = pokemon_alias == "" ? pokemon_specie : pokemon_alias
    prepare_message(name, pokemon_name)
    { name: name, pokemon_specie: pokemon_specie.downcase.capitalize, pokemon_name: pokemon_name }
  end

  def selected_action
    action = menu
    until action.downcase == "exit"
      case action.downcase
      when "train"
        train
      when "leader"
        challenge_leader
      when "stats"
        show_stats
      end
      action = menu
    end
  end
end

game = Game.new
game.start
