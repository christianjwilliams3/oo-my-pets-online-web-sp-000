class Dog
  @@all = []

   def initialize(name, owner)
    @name = name
    @owner = Owner.new(owner)
    @@all << self
  end

   def name
    @name
  end

   def owner
    @owner.name
  end

   def owner=(owner)
    @owner = Owner.new(owner)
  end

   def mood=(mood)
    @mood = mood
  end

   def mood
    if @mood == nil
      "nervous"
    else
      @mood
    end
  end

   def self.all
    @@all.select{|dog| dog.name}
  end
end