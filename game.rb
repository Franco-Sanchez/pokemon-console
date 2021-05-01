require_relative "player"
require_relative "battle"
require_relative "pokedex"

class Game
  def start
    player_data = welcome
    @player = Player.new(player_data[:name], player_data[:pokemon_specie], player_data[:pokemon_name])
    selected_action
    goodbye
  end

  def train
    # Compelte this
  end

  def challenge_leader
    # Compelte this
  end

  def show_stats
    # Compelte this
  end

  def goodbye
    puts
    puts "Thanks for playing Pokemon Ruby"
    puts "This game was created with love by: Franco Sánchez :)"
  end

  def menu
    puts "-----------------------Menu-----------------------"
    puts
    puts "1. Stats        2. Train        3. Leader       4. Exit"
    print "> "
    gets.chomp
  end

  private

  def welcome
    puts "\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$#"
    puts "\#$\#$\#$\#$\#$\#$\#$                               $\#$\#$\#$\#$\#$\#$#"
    puts "\#$#\#$#\#$#\#$ ---        Pokemon Ruby         --- \#$#\#$#\#$\#$#"
    puts "\#$\#$\#$\#$\#$\#$\#$                               $\#$\#$\#$\#$\#$\#$#"
    puts "\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$#"
    name = player_name
    pokemon_specie = select_pokemon(name)
    pokemon_name = give_pokemon_name(pokemon_specie)
    puts "GREAT MASTER, raise your young #{pokemon_name.upcase} by making it fight!"
    puts "When you feel ready you can challenge BROCK, the PEWTER's GYM LEADER"
    { name: name, pokemon_specie: pokemon_specie, pokemon_name: pokemon_name }
  end

  def player_name
    puts
    puts "Hello there! Welcome to the world of POKEMON! My name is OAK!"
    puts "People call me the POKEMON PROF!"
    puts
    puts "This world is inhabited by creatures called POKEMON! For some"
    puts "people, POKEMON are pets. Others use them for fights. Myself..."
    puts "I study POKEMON as a profession."
    puts "First, what is your name?"
    print "> "
    gets.chomp
  end

  def select_pokemon(player_name)
    puts "Right! So your name is #{player_name.upcase}!"
    puts "Your very own POKEMON legend is about to unfold! A world of"
    puts "dreams and adventures with POKEMON awaits! Let's go!"
    puts "Here, GREAT MASTER! There are 3 POKEMON here! Haha!"
    puts "When I was young, I was a serious POKEMON trainer"
    puts "In my old age, I have only 3 left, but you can have one! Choose!"
    puts
    puts "1. Bulbasaur    2. Charmander   3. Squirtle"
    print "> "
    gets.chomp
  end

  def give_pokemon_name(pokemon_specie)
    puts
    puts "You selected #{pokemon_specie.upcase}. Great choice!"
    puts "Give your pokemon a name?"
    print "> "
    pokemon_name = gets.chomp
    pokemon_name == "" ? pokemon_specie : pokemon_name
  end

  def selected_action
    action = menu
    until action == "Exit"
      case action
      when "Train"
        train
        action = menu
      when "Leader"
        challenge_leader
        action = menu
      when "Stats"
        show_stats
        action = menu
      end
    end
  end
end

game = Game.new
game.start
