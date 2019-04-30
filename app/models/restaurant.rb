class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#INSTANCE METHODS

  def customers
#restaurants have many reviews
#look through all reviews for this specific restaurant
#select the customers who wrote those reviews
  reviews = Review.all.select {|review| review.restaurant == self}
  restrev = reviews.map {|review| review.customer}
#if we just want the name then I'd add .name to^ in the block so it would be {...review.customer.name}
  end

  def reviews
#restaurants have many reviews
#look through and select the reviews for this specific restaurant
  reviews = Review.all.select {|review| review.restaurant == self}
  # binding.pry
  end



#CLASS METHODS
  def self.all
    @@all
  end

  def self.find_by_name(name)
#find the same specific restaurant
  self.all.find {|restaurant| restaurant.name == name}
  #returns the restaurant object
  # binding.pry
  end




end
