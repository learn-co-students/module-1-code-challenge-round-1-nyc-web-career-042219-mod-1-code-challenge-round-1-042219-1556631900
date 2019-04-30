class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    Review.all.each do |review|
      if review.restaurant == self
        return review.customer
      end
    end
  end
  ##trouble with this, returning empty array, know it's a relationship issue but burned too much time on it and got flustered. :(

  def reviews
    Review.all.select {|review| self.review}
  end

  def average_star_rating
    Review.all.sum {|review| review.rating/ review.size}
  end

  def longest_review
    Review.all.each
  end

  # CLASS METHODS
  def self.all
    @@all
  end



end
