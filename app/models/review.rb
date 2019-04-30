class Review
  @@all = []

  def self.all
    @@all
  end

  attr_reader :restaurant, :customer
  attr_accessor :content, :rating

  def initialize(restaurant, content, rating, customer)
    @restaurant = restaurant
    @content = content
    @rating = rating
    @customer = customer
    @@all << self
  end

end

