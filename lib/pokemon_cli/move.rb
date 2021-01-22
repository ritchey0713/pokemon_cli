class Move 
    attr_reader :power, :pp, :accuracy, :name
  
    @@all = []
  
    def initialize(hash)
       hash.each do |k,v|
        self.send("#{k}=", v)  
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
  
    def power=(power)
      @power = power
    end 
  
    def pp=(pp)
      @pp = pp
    end 
    
    def name=(name)
      @name = name
    end 
  
    def accuracy=(accuracy)
      @accuracy = accuracy
    end 
  
  end #end class 
 