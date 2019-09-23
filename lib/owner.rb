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
    def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end

  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
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
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
 end
