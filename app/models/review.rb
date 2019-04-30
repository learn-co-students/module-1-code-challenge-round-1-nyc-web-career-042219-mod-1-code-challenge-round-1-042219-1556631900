class Review

  @@all = []

  def self.all
    @@all
  end

  attr_reader :customer, :restaurant
  attr_accessor :content, :rating

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating.to_i
    @@all << self
  end

  #the customer, restaurant, rating and content methods
  #are already set and getable through initialize & attr_reader or attr_accessor

end
