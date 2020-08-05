require 'pry'

class Cat
  # code goes here
  attr_accessor :owner, :mood 
  attr_reader :name
  
  @@all = []

  def initialize(name_param, owner_param)
    @name = name_param
    @owner = owner_param
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all 
  end

end