class Owner
  attr_accessor :name
  attr_reader :species,:pets
  # code goes here
  @@owner_list = []
   @@count = 0 
  def initialize(name,species="human")
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owner_list << self
    @@count += 1 
  end 
   ##the class methods
  def self.all 
    @@owner_list
  end 
  
  def self.reset_all
    @@count = 0 
  end 
  
  def self.count
    @@count
  end 
  
  ##the instance methods
  def say_species
    "I am a human."
  end 
  
  def buy_fish(new_fish)
    fish = Fish.new(new_fish)
    pets[:fishes] << fish 
  end 
  
   def buy_cat(new_cat)
    cat = Cat.new(new_cat)
    pets[:cats] << cat
  end 
  
  def buy_dog(new_dog)
    dog = Dog.new(new_dog)
    pets[:dogs] << dog
  end 
  
  def walk_dogs
    @pets.each do |key|
    if key == :dogs
      key.map {|val| val.mood = "happy"}
    end 
    end 
  end 
end