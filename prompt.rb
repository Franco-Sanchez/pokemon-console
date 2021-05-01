module Prompt
  def welcome_message
    puts "\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$#"
    puts "\#$\#$\#$\#$\#$\#$\#$                               $\#$\#$\#$\#$\#$\#$#"
    puts "\#$#\#$#\#$#\#$ ---        Pokemon Ruby         --- \#$#\#$#\#$\#$#"
    puts "\#$\#$\#$\#$\#$\#$\#$                               $\#$\#$\#$\#$\#$\#$#"
    puts "\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$\#$#"
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
  end

  def select_pokemon(player_name)
    puts "Right! So your name is #{player_name.upcase}!"
    puts "Your very own POKEMON legend is about to unfold! A world of"
    puts "dreams and adventures with POKEMON awaits! Let's go!"
    puts "Here, #{player_name.upcase}! There are 3 POKEMON here! Haha!"
    puts "When I was young, I was a serious POKEMON trainer"
    puts "In my old age, I have only 3 left, but you can have one! Choose!"
    puts
    puts "1. Bulbasaur    2. Charmander   3. Squirtle"
    print "> "
  end

  def give_pokemon_name(pokemon_specie)
    puts
    puts "You selected #{pokemon_specie.upcase}. Great choice!"
    puts "Give your pokemon a name?"
    print "> "
  end

  def prepare_message(name, pokemon_name)
    puts "#{name.upcase}, raise your young #{pokemon_name.upcase} by making it fight!"
    puts "When you feel ready you can challenge BROCK, the PEWTER's GYM LEADER"
  end

  def menu_message
    puts "-----------------------Menu-----------------------"
    puts
    puts "1. Stats        2. Train        3. Leader       4. Exit"
    print "> "
  end

  def goodbye
    puts
    puts "Thanks for playing Pokemon Ruby"
    puts "This game was created with love by: Franco Sánchez :)"
  end

  class Stats
    def self.show_stats_message(pokemon_name, pokemon_specie)
      puts
      puts "#{pokemon_name}:"
      puts "Kind: #{pokemon_specie.species}"
      puts "Level: #{pokemon_specie.level}"
      puts "Type: #{pokemon_specie.type}"
      stats_data(pokemon_specie)
    end

    def self.stats_data(pokemon_specie)
      puts "Stats:"
      puts "HP: #{pokemon_specie.hp}"
      puts "Attack: #{pokemon_specie.attack}"
      puts "Defense: #{pokemon_specie.defense}"
      puts "Special Attack: #{pokemon_specie.special_attack}"
      puts "Special Defense: #{pokemon_specie.special_defense}"
      puts "Speed: #{pokemon_specie.speed}"
      puts "Experience Points: #{pokemon_specie.experience}"
    end

    private_class_method :stats_data
  end

  class Fight
    def self.rival_message(player, bot)
      rival_name = bot ? bot.name : "Brock"
      pokemon_rival = bot ? bot.pokemon_name : "Onix"
      pokemon__rival_level = bot ? bot.pokemon_specie.level : 10
      puts
      if bot
        puts "#{player.name} challenge #{bot.name} for training"
      else
        puts "#{player.name} challenge the Gym Leader Brock for a fight!"
      end
      puts "#{rival_name} has a #{pokemon_rival} level #{pokemon__rival_level}"
    end

    def self.options
      puts "What do you want to do now?"
      puts
      puts "1. Fight        2. Leave"
      print "> "
    end

    def self.start_fight(player, bot)
      rival_name = bot ? bot.name : "Brock"
      pokemon_rival = bot ? bot.pokemon_name.upcase : "Onix".upcase
      puts
      puts "#{rival_name} sent out #{pokemon_rival}!"
      puts "#{player.name} sent out #{player.pokemon_name.upcase}!"
      puts "-------------------Battle Start!-------------------"
    end
  end
end
