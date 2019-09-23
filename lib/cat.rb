class Cat

    attr_accessor :mood, :owner
    attr_reader :name

     @@all = []

     def initialize(name, owner)
      @name = name
      @mood = "nervous"
      @@all << self
      @owner = owner
      @owner.pets[:cats] << self
    end

     def self.all
      @@all
    end
  end 