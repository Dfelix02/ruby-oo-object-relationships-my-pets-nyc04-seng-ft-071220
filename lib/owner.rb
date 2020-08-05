require 'pry'

require_relative "./dog"
require_relative "./cat"

class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(name_param)
    @name = name_param
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all 
  end

  def self.count 
    @@all.length
  end

  def self.reset_all 
    @@all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
    # binding.pry
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
    # binding.pry
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
    # binding.pry
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
    # binding.pry
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats 
    self.cats.each { |cat| cat.mood = "happy" }
  end

  def sell_pets 
    self.dogs.each { |dog| dog.mood = "nervous" }
    self.cats.each { |cat| cat.mood = "nervous" }
    self.dogs.each { |dog| dog.owner = nil }
    self.cats.each { |cat| cat.owner = nil }
  end

  def list_pets 
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end

end



# binding.pry
0