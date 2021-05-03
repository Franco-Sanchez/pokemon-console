require_relative "pokemon"
require_relative "prompt"

class Player
  attr_reader :name, :character, :pokemon_specie, :pokemon_name

  def initialize(name, character, pokemon_specie, pokemon_name = nil)
    @name = name
    @character = character
    @pokemon_specie = Pokemon.new(pokemon_specie, character)
    @pokemon_name = pokemon_name || pokemon_specie
  end

  def select_move
    # Complete this
  end
end

# Create a class Bot that inherits from Player and override the select_move method
class Bot < Player
  def select_move
    # nothing for now
  end
end
