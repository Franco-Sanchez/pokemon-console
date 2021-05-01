require_relative "prompt"

class Battle
  include Prompt

  attr_reader :type_fight, :player, :bot

  def initialize(type_fight, player, bot = nil)
    @type_fight = type_fight
    @player = player
    @bot = bot
  end

  def start
    # Prepare the Battle (print messages and prepare pokemons)
    @type_fight == "train" ? Fight.with_random(@player, @bot) : Fight.with_leader(@player)
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
