class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

#INSTANCE METHODS
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
#a customer has many reviews
#look through and collect all reviews this specific customer has written
  reviews = Review.all.select {|review| review.customer == self}
  reviews.length
  # binding.pry
  end

  def restaurants
#a customer has many reviews
#look through all reviews
#that this specific customer has written
#return the array of restaurants
  reviews = Review.all.select {|review| review.customer == self}
  restrev = reviews.map {|review| review.restaurant.name}
  restrev.uniq
  # binding.pry
  end

#could make a helper method for the reviews so I don't have to keep retyping that code



#CLASS METHODS
  def self.all
    @@all
  end

  def self.find_by_name(first_name)
#find the same specific customer
#changed to first_name to get the ball rolling
#need to use the FULL NAME
#probably need to use the full_name instance method

  self.all.find {|customer| customer.first_name == first_name}
  #returns the customer object
  # binding.pry
  end




end
