require_relative "prompt"

class Battle
  include Prompt

  attr_reader :player, :rival

  def initialize(player, rival)
    @player = player
    @rival = rival
  end

  def start
    # Prepare the Battle (print messages and prepare pokemons)
    Fight.rival_message(@player, @rival)
    selected_action

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

  def fight
    Fight.start_fight(@player, @rival)
  end

  private

  def menu
    Fight.options
    gets.chomp
  end

  def selected_action
    action = menu
    until action.downcase == "leave"
      case action.downcase
      when "fight"
        fight
      end
      action = menu
    end
  end
end
