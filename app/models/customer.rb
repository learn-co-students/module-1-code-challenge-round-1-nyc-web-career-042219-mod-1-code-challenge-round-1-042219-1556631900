require 'pry'

class Customer

  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  #Here I am defining the class method as self.all
  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new = (self, restaurant, content, rating)
  end

  def num_reviews

  end

  def restaurant
     Customer.all.map { |cust| cust.restaurant == self }
  end

  def find_by_name(name)
    full_name.split(" ")[0]
  end

  def find_all_by_first_name(name)
  end

  def all_names

end
