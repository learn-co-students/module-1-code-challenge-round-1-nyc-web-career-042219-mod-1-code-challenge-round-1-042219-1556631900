class Restaurant
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def my_reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def reviews
    my_reviews
  end

  def customers
    my_reviews.map do |review|
      review.customer
    end
  end

  def average_star_rating
    review_count = my_reviews.count
    star_total = my_reviews.reduce(0) do |sum, review|
      sum += review.rating
    end
    star_total / review_count
  end

  def longest_review
    my_reviews.max_by do |review|
      review.content.length
    end
  end

  def self.find_by_name(name)
    Restaurant.all.select do |restaurant|
      restaurant.name.upcase == name.upcase
    end
  end

end
