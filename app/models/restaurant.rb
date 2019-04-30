class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    #taking the reviews for a certain restaurant and looking through the reviews to find the rating for each review. Then with that array of ratings, looking for the average
      reviews.map do |review|
        review.rating
      end.average
  end

  def longest_review
    reviews.sort_by do |review|
      review.content.length
    end.last
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end


  def self.all
    @@all
  end

end
