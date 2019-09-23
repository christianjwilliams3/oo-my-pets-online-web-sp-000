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
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end
  
    def feed_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

 end