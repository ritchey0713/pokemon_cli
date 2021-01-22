class CLI

  def pokemon_exists?(poke)
    # puts "in poke exists"
    if poke
      puts "Would you like to catch the #{poke.species}"
      input2 = gets.strip.downcase
      if input2 == "yes"
        ## what do?  
        poke.catch_pokemon  
      end 
    else 
      puts "OOPS, check your spelling :D" 
    end
  end 

  def get_poke_by_name(input, pokemon_api)
    if input != "list" && input != "move"
      poke = pokemon_api.search_pokemon_by_name(input)
      pokemon_exists?(poke)
    end 
  end 

  def run
    puts "Welcome to the safari zone"
    pokemon_api = Api.new()
    input = nil 
    while input != "exit"
      puts "please pick a pokemon? or type 'pokemon' to see the pokedex"
      input = gets.strip.downcase
      if input != nil && input != "exit" 
        get_poke_by_name(input, pokemon_api)
      elsif input == "move"
        pokemon_api.search_moves_by_name(input)
        ## flesh out puts
      elsif input == "pokedex"
        Pokemon.all.each {|poke| puts poke.species}
      end 
      ## condition 
    end 
    puts "see ya later guy"
  end 
end 







