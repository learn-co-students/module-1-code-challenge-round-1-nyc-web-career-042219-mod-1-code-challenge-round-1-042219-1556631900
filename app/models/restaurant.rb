require 'pry'

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Here I am defining the class method as self.all
  def self.all
    @@all
  end

  def customer
  end

  def reviews
  end

  def average_star_rating
  end

  def longest_review
  end

  def find_by_name(name)
    restaurant.find {|first| first.name }
  end

end
