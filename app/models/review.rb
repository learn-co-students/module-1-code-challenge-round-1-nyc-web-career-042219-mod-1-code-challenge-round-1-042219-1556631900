class Review

  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  #here I am defining the class method with self.all
  def self.all
    @@all
  end

  def customer
    Customer.all.select { |rv| rv.customer == self }
  end

  def restaurant
  end

  def rating
  end

  def content
  end

end
