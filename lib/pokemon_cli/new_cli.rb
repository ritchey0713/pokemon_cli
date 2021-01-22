## executes it all
## look at music library controller file, similar

# POKEMON_URL = "https://pokeapi.co/api/v2/"


class CLI


  def run
    pokemon_api = Api.new()
    puts "please pick a pokemon?"
    # input = gets.chomp
    pokemon_api.search_pokemon_by_name("ditto")

    # how do we call on the api using the user input to get some related info? and what to do with it
  end 
end 























## cli.rb
input = gets.strip 
while input != "exit" do 
  if input == "start over" || input == ""
  list = StarWars.get_list(input)
  list.each.with_index(1) do {|obj, index| "#{index}. #{obj.name}"}
  puts "please select one"
  input2 = gets.strip 
  details = StarWars.get_details(input2, list.first.class)
  puts "#{Starwars.print_details(details)}"
  puts "exit to exit or start over to start over "
  else 
    say_goodbye
  end 
end 



def get_people 
  hash = HTTParty.get("url/#{people}")
  hash.each do {|k,v| People.new(k,v)}
end 

def self.get_list(input)
  case input
  when "1"
    Api.get_people if People.all.length == 0
    People.all
  when "2"
    
    Starship.all
  else
    
  end
end 

def self.get_details(input, klass)
  ## class 
  obj = klass.all[input - 1]
  case klass
  when "People"
    ## show ships, and planets
    # ships = [url]
    # ships = obj.ships.each {|url| Api.get_ships(url)}
    # planet = obj.planets.each {|url| Api.get_planets(url)}
    # ships = Ships.all.find_by_url(url)
  when 
    
  else
    
  end
end 


## if they pick to list ships 
def get_ships(url)
  stuff = HTTParty.get(url)
  Ship.new(stuff)
end 

# def get_people_ships(arr_url)
#   arr = []
#   arr_url.each do |url|
#   stuff = HTTParty.get(url)
#   x = Ship.new(stuff)
#   arr << x 
#   end
#   arr
# end 