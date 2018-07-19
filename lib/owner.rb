require 'pry'
class Owner
  
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@count = 0
  
  
  def initialize(owner_name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self 
    @@count += 1
    @species = "human"
  end 
  
  def buy_fish(name) 
    name = Fish.new(name)
    @pets[:fishes] << name
  end 
  
  
  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end 
  
  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name 
  end 
  
  def say_species 
    "I am a human."
  end 
  
  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood=("happy")}
  end 
  
  def play_with_cats 
    @pets[:cats].map {|cat| cat.mood=("happy")}
  end
  
  def feed_fish 
    @pets[:fishes].map {|fish| fish.mood=("happy")}
  end 
  
  def sell_pets
   @pets[:dogs].map {|dog| dog.mood=("nervous")}
   @pets[:cats].map {|cat| cat.mood=("nervous")}
   @pets[:fishes].map {|fish| fish.mood=("nervous")}
   
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def list_pets 
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
  
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@count = 0
  end 
  
end