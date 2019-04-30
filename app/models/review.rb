class Review

  @@all = []

  attr_reader :customer, :restaurant, :rating, :content

  def initialize(customer,restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def rating
    @rating
  end

  def content
    @content
  end

end
