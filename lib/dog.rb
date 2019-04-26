class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  
  def initialize(dog_name,dog_mood = "nervous")
    @name = dog_name
    @mood = dog_mood
  end 
end