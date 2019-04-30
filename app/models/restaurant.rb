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

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end

  def customers
    self.reviews.map { |review| review.customer}.uniq
  end

  def average_star_rating
    stars = self.reviews.map { |review| review.rating}
    stars.inject{ |sum, el| sum + el }.to_f / stars.size 
  end

  def longest_review
    reviews = self.reviews.map { |review| review.content}
    reviews.max_by { |review| review.length}
  end

  def self.find_by_name(name)
    Restaurant.all.find { |restaurant| restaurant.name}
  end

end
