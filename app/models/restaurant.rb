class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    my_customers = []
    Review.all.each do |review|
    if review.restaurant == self
    my_customers << review.customer
      end
    end
    my_customers
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    restaurant_ratings = []
    Review.all.each do |review|
      if review.restaurant == self
        restaurant_ratings << review.rating
      end
    end
    restaurant_ratings.inject{ |sum, el| sum + el }.to_f / restaurant_ratings.size
  end

  def longest_review
    self.reviews.sort_by do |review|
      review.content
  end.inject { |f,s| f.length > s.length ? f : s }
end

end
