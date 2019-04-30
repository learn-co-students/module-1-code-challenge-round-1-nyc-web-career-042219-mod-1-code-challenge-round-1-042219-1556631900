class Review
  attr_reader :restaurant, :customer, :content, :rating

  @@all = []

  def initialize(restaurant, customer, content, rating) #rating = 1-5
    @restaurant = restaurant
    @customer = customer
    @content = content

    if rating > 5
      @rating = 5
    elsif rating < 1
      rating = 1
    else
      @rating = rating
    end

    @@all << self
  end

  def self.all
    @@all
  end
end
