class Api
  attr_accessor :url
  def initialize(url)
    @url = "https://pokeapi.co/api/v2/"
  end

  def search_pokemon_by_name(name)
    req_url="#{url}/pokemon/#{name}"
    data = HTTParty.get(req_url)
    pokemon_hash = {
      id: data["id"],
      species: data["name"],
      moves: data["moves"].first["move"]["name"],
      type: data["types"].first["type"]["name"],
      abilities: data["abilities"].map {|hash| hash["ability"]["name"] }
    }
    pokemon = Pokemon.new(pokemon_hash)
    # binding.pry
    puts pokemon.species
  end 

end 

# api = Api.new("https://pokeapi.co/api/v2/")


