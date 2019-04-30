class Review

  attr_reader :customer, :restaurant, :rating, :content


  @@all = []

def initialize(content, rating, customer, restaurant)
  @content = content
  @rating = rating
  @customer = customer
  @restaurant = restaurant
  @@all << self
end
  def self.all
    @@all
  end
end
