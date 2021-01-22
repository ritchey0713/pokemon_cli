class Api
  attr_accessor :url
  def initialize()
    @url = "https://pokeapi.co/api/v2/"
  end

  def search_pokemon_by_name(name)
    req_url="#{url}/pokemon/#{name}"
    data = HTTParty.get(req_url)
    if data != "Not Found"
      moves_arr = data["moves"].map do |move_hash|
        move_hash["move"]["name"]
      end
      
      pokemon_hash = {
        id: data["id"],
        species: data["name"],
        moves: moves_arr,
        type: data["types"].first["type"]["name"],
        abilities: data["abilities"].map {|hash| hash["ability"]["name"] }
      }
      pokemon = Pokemon.new(pokemon_hash)
    else 
      return
    end
    pokemon
  end 

  def search_moves_by_name(move_name)
    req_url="#{url}/move/#{move_name}"
    data = HTTParty.get(req_url)
    hash = {
      name: data["name"],
      power: data["power"],
      pp: data["pp"],
      accuracy: data["accuracy"]
      }

    move = Move.new(hash)
  end

end 



