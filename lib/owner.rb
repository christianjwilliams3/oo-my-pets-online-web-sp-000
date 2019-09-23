class Owner
 
    attr_reader :species
    attr_accessor :name, :pets, :dog, :cat


 @@all = []
@@pets =, :dogs => [], :cats => []}

  def initialize(species)
    @species = species
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

  def pets
    @@pets
  end
  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end
  
  def feed_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end
  
 def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = 'nervous'
      end
      arr.clear
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
 end
