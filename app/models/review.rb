class Review

  attr_reader :customer, :restaurant
  attr_accessor :content, :rating

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end


  def self.all
    @@all
  end

  def customer
    Review.all.select do |x|
      x.
      # was going to iterat
    end
  end


end
