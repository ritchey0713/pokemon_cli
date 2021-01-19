class Pokemon 
  # pokemon attrs for MY class 
  # name, => gives a string
  # species => gives url ?
  # moves => another big hash
  # abilities => another hash
  # types => hashes 
  # id
  attr_accessor :moves, :abilities, :nickname 
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
    @@all << self
  end 

  def save 
    @@all << self
  end 

  def self.all 
   @@all
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



