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
    arr = Review.all.select{|review| review.restaurant == self}.uniq
    arr.map {|review| review.customer}.uniq
  end

  def reviews
    Review.all.select{|review|review.restaurant == self}
  end

  def average_star_rating
    sum = 0
    self.reviews.each {|review| sum += review.rating}
    sum / self.reviews.length
  end

  def longest_review
    self.reviews.max_by {|review| review.content}
  end

  def self.find_by_name(name)
    Restaurant.all.select {|restaurant| restaurant.name == name}
  end
  
end
