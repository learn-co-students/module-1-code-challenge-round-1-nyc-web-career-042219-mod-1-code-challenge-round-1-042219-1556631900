class Review
  attr_reader :customer, :restaurant, :content, :rating
  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    if rating.to_i > 5
      @rating = 5
    elsif rating.to_i < 1
      @rating = 1
    else
      @rating = rating.to_i
    end

    @@all << self
  end

end
