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

  # grabs subset of reviews with restaurant equal to self
  def my_reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  # defines an extra access method for my_reviews
  def reviews
    my_reviews
  end

  # converts my reviews into their customer attribute
  def customers
    my_reviews.map do |review|
      review.customer
    end
  end

  # returns total number of reviews for this restaurant
  def review_count
    review_count = my_reviews.count
  end

  # returns sum of all star ratings
  # I feel like this is a pretty verbose way to do this
  def star_total
    star_total = my_reviews.reduce(0) do |sum, review|
      sum += review.rating
    end
  end

  # divides total ratings by number of ratings
  def average_star_rating
    star_total / review_count
  end

  # finds longest content string by comparing string length
  def longest_review
    my_reviews.max_by do |review|
      review.content.length
    end
  end

  # matches restaurant from 'all' array by name
  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name.upcase == name.upcase
    end
  end

end
