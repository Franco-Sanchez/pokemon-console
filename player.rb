require_relative "pokemon"
require_relative "prompt"

class Player
  attr_reader :name, :pokemon_specie, :pokemon_name

  def initialize(name, pokemon_specie, pokemon_name)
    @name = name
    @pokemon_specie = Pokemon.new(pokemon_specie)
    @pokemon_name = pokemon_name
  end

  def select_move
    # Complete this
  end
end

# Create a class Bot that inherits from Player and override the select_move method
class Bot < Player
end
