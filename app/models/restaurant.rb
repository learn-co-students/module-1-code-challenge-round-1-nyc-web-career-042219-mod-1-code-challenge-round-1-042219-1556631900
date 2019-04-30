class Restaurant
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |restaurant| restaurant.name == name }
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    retrieve_reviews.select(&:customer).uniq
  end

  def reviews
    retrieve_reviews
  end

  def average_star_rating
    retrieve_reviews.map(&:rating).sum.to_f / retrieve_reviews.length
  end

  def longest_review
    retrieve_reviews.map(&:content).max_by(&:length)
  end

  private

  def retrieve_reviews
    Review.all.select { |review| review.restaurant == self }
  end

end
