class Owner
  @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end

   def name
    @name.dup.freeze
  end

   def species(specie = "human")
    @species = specie
  end

   def say_species
    "I am a #{species}."
  end

   def self.all
    @@all
  end

   def self.count
    self.all.collect{|owner| owner.name}.count
  end

   def self.reset_all
    @@all = []
  end

   def cats
    Owner.reset_all
    Cat.all
  end
  
  

 end