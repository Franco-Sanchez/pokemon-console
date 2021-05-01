require_relative "prompt"

class Battle
  # (complete this)
  def initialize(player, rival)
    @player = player
    @rival = rival
    # Complete this
  end

  def start
    puts
    puts "#{@player.name} challenge Random Person for training"
    puts "Random Person has a Onix level 4"
    puts "What do you want to do now?"
    puts
    puts "1. Fight        2. Leave"
    print "> "
    # Prepare the Battle (print messages and prepare pokemons)

    # Until one pokemon faints
    # --Print Battle Status
    # --Both players select their moves

    # --Calculate which go first and which second

    # --First attack second
    # --If second is fainted, print fainted message
    # --If second not fainted, second attack first
    # --If first is fainted, print fainted message

    # Check which player won and print messages
    # If the winner is the Player increase pokemon stats
  end
end
