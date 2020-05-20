require 'pry'
class Dog
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.print_all
    binding.pry
    puts @@all
  end
  
  def self.clear_all
    @@all = []
  end
end