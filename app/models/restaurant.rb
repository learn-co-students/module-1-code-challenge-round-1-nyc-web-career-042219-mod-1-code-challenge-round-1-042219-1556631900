class Restaurant

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.map { |review| review.customer }.uniq
  end

  def ratings
    # arr of all ratings
    ratings = self.reviews.map { |review| review.rating }
  end

  def average_star_rating
    # avrg is total/amt
    self.ratings.sum.to_f / self.ratings.size
  end

  def contents
    # arr of review contents
    self.reviews.map { |review| review.content }
  end

  def longest_review
    self.contents.max_by { |content| content.length }
  end

  def self.find_by_name(name)
    self.all.find{ |restaurant| restaurant.name == name }
  end

end
