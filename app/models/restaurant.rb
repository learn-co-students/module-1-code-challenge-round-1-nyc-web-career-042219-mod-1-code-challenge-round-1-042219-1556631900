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

  def average_star_rating
    # avrg is total/amt
    ratings = self.reviews.map { |review| review.rating } #arr of ratings
    ratings.sum.to_f / ratings.size
  end

  def longest_review
    contents = self.reviews.map { |review| review.content } #arr of review contents
    contents.max_by { |content| content.length }
  end

  def self.find_by_name(name)
    self.all.find{ |restaurant| restaurant.name == name }
  end

end
