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
    restarray=Review.all.map do |review|
      review.customer if review.restaurant==self
    end.compact
    restarray.uniq
  end


  def reviews
    revuearray=Review.all.select do |review|
      review.restaurant==self
    end
    revuearray

  end

  def average_star_rating
    reviewsum=0
    self.reviews.each do |review|
      reviewsum += review.rating
    end
    reviewsum/self.reviews.length
  end

  def longest_review
    revmax=0
    revlong=""
    self.reviews.each do |review|
      if revmax < review.content.length
        revmax = review.content.length
        revlong = review
      end

    end
    # binding.pry
    revlong

  end





end
