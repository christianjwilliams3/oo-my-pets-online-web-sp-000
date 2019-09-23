class Owner
  attr_accessor :pets
  attr_reader :name, :species #:pets

     @@all = []

   def initialize(name)
    # binding.pry
    @owner = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end

   def say_species
    "I am a #{@species}."
  end

   def name
    @owner
  end

   def buy_cat(name)
    cat = Cat.new(name, self)
    # @pets[:cats] << Cat.new(cat_name)
    # cat = Cat.new(cat_name)
    # @pets[:cats] << cat
  end

   def cats
    @pets[:cats]
  end

   def buy_dog(name)
    dog = Dog.new(name, self)
    # @pets[:dogs] << dog
    # @pets[:dogs] << Dog.new(dog_name)
  end

   def dogs
    @pets[:dogs]
  end

   def walk_dogs
    # binding.pry
    # self.dogs.each{|dog| dog.mood = "happy"}
    @pets[:dogs].map {|dog| dog.mood = "happy"}
    #.map
  end

   def feed_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

   def sell_pets
    @pets.map do |species, pets|
      pets.map do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
    pets.clear
    end
  end

 #   @pets.each do |species, pets|
#   pets.each do |pet|
#     pet.mood = "nervous"
#   end
# end
# @pets.clear

   def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
      #.size || .count???
      #assign variable ex. dog_num = @pets[:dogs].length
  end

   def self.all
    @@all
  end

   def self.count
    @@all.size #.length || #.count
  end

   def self.reset_all
    @@all.clear
  end

 end 	
