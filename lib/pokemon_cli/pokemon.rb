## display pokedex 
## display caught 

class Pokemon 

  include CatchPokes::InstanceMethods

  attr_accessor :moves, :abilities, :nickname, :add_to_bag
  attr_reader :type, :id, :species

  @@all = []

  def initialize(hash)
    #hash[moves] = moves
     hash.each do |k,v|
      # x = "@#{k.to_s} = #{v}"
      self.send("#{k}=", v)
      # binding.pry
      # @id = 123
      # hash[k] = v

    end 
    create_moves(self.moves)
    @@all << self
  end 
  
  def create_moves(moves_arr)
    puts "please wait while we find your pokemon..."
    api = Api.new
    move_objs = moves_arr.map do |move_name|
     api.search_moves_by_name(move_name)
    end
    self.moves = move_objs
  end 

  def save 
    @@all << self
  end 

  def self.all 
   @@all
  end



  def catch_pokemon 
    if probs 
      self.add_to_bag
      puts "you caught the #{self.species}"
    else 
      puts "they got away!"
    end 

  end

  private 

  def id=(id)
    @id = id
  end 

  def type=(type)
    @type = type
  end 

  def species=(species)
    @species = species
  end 

end #end class 



