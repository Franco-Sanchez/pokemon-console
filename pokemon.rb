require_relative "pokedex"

class Pokemon
  include Pokedex

  attr_reader :species, :type, :base_exp, :effort_points, :growth_rate, :base_stats,
              :moves, :effort_values, :level, :points_exp, :current_hp

  def initialize(pokemon_specie, character)
    # Retrieve pokemon info from Pokedex and set instance variables
    # Calculate Individual Values and store them in instance variable
    # Create instance variable with effort values. All set to 0
    # Store the level in instance variable
    # If level is 1, set experience points to 0 in instance variable.
    # If level is not 1, calculate the minimum experience point for that level and store it in instance variable.
    # Calculate pokemon stats and store them in instance variable
    pokemon = pokemon_method(pokemon_specie)
    @species = pokemon[:species]
    @type = pokemon[:type]
    @base_exp = pokemon[:base_exp]
    @effort_points = pokemon[:effort_points]
    @growth_rate = pokemon[:growth_rate]
    @base_stats = pokemon[:base_stats]
    @moves = pokemon[:moves]
    @effort_values = { hp: 0, attack: 0, defense: 0, special_attack: 0, special_defense: 0, speed: 0 }
    @level = retrieve_level(character)
    @points_exp = 0
    @current_hp = @effort_values[:hp]
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

  def battle_attack(target)
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

    # If the new experience point are enough to level up, do it and print message:
    # "#[pokemon name] reached level [level]!"
    # -- Re-calculate the stat
  end

  private

  def retrieve_level(character)
    case character
    when "user"
      1
    when "random"
      rand(1..10)
    when "leader"
      10
    end
  end

  def pokemon_method(pokemon_specie)
    pokemon = POKEMONS[pokemon_specie.to_s]
    { species: pokemon[:species], type: pokemon[:type], base_exp: pokemon[:base_exp],
      effort_points: pokemon[:effort_points], growth_rate: pokemon[:growth_rate],
      base_stats: pokemon[:base_stats], moves: pokemon[:moves] }
  end
end
