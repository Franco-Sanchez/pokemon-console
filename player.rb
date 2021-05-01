require_relative "pokemon"
# require_relative "prompt"

class Player
  # (Complete this)
  def initialize(name, pokemon_specie, pokemon_name)
    # Complete this
    @name = name
    @pokemon_specie = pokemon_specie
    @pokemon_name = pokemon_name
  end

  def select_move
    # Complete this
  end
end

# Create a class Bot that inherits from Player and override the select_move method
class Bot < Player
end
