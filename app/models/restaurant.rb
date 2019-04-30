class Restaurant
  attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end



  def reviews
    #returns all reviews associated with this restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    #gets all the reviews using #reviews method. uses map to return customer objects that gave associated reviews
    #uniq returns only uniqe customers of the array, removing anyone who gave two or more reviews
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    ##get array of ratings, sum them with reduce, divide by length
    reviews.map do |review|
      review.rating
    end.reduce(:+).to_f/reviews.length
  end

  def longest_review
    #use max_by to determine the longest review. review length measured using .length on the string
    reviews.max_by do |review|
      review.content.length
    end
  end

  #CLASS Methods

  def self.all
    @@all

  end

  def self.find_by_name(name)
    #iterates over the @@all of restaurant to find the restaurant with the name given in argument
    Restaurant.all.find do |rest|
      rest.name == name
    end
  end
end
