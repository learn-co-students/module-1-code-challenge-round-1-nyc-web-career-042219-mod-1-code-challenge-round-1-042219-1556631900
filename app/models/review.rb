class Review

  attr_reader :customer, :restaurant, :content, :rating
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating #unclear if I should code the rating to not exceed an integer of 5. If so, I would write a method that could check if a rating was > 5, or < 1, and set it to the appropriate integer
    @@all << self
  end

  def self.all
    @@all
  end

end
