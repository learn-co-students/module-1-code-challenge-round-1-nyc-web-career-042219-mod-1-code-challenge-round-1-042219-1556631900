class Review

  attr_reader :customer, :restaurant, :content, :rating
  @@all =[]

  def self.all
    @@all
  end
# customer,restaurant, content, rating
  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

end
