class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def find_reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.find_reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    rating_total = 0
    self.find_reviews.each { |review| rating_total += review.rating }
    average_rating = rating_total.to_f / self.find_reviews.length.to_f
  end

  def longest_review
    self.find_reviews.map { |review| review.content }.max_by { |content| content.length }
  end

  def self.find_by_name(restaurant_name)
    self.all.find { |restaurant| restaurant.name == restaurant_name }
  end

  def self.all
    @@all
  end

end
