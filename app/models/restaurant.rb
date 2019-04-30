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
    all_reviews = self.reviews
    all_reviews.map {|review| review.customer}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    all_reviews = self.reviews
    all_ratings = all_reviews.map {|review| review.rating}
    (all_ratings.reduce(:+).to_f / all_ratings.length.to_f)
  end

  def longest_review
    all_reviews = self.reviews
    sorted = all_reviews.sort_by {|review| -review.content.length}
    sorted.first
  end

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name}
  end
end
