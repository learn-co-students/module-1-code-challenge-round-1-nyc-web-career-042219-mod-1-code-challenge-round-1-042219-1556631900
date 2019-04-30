class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating = 0, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self

  end


  #CLASS METHODS

  def self.all
    @@all
  end

  def self.customer
    @customer
  end

  def self.restaurant
    @restaurant
  end

  def self.rating
    @rating
  end

  def self.content
  end


end
