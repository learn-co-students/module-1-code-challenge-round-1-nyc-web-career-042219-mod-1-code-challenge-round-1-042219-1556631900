class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  # contatenates first and last name
  def full_name
    "#{first_name} #{last_name}"
  end

  # adds a review with a customer, restaurant, review content, and rating number
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  # grabs subset of reviews with customer equal to self
  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  # counts my subset of reviews
  def num_reviews
    my_reviews.count
  end

  # converts my reviews into their restaurant attributes
  def restaurants
    my_reviews.map do |review|
      review.restaurant
    end
  end

  # matches specific customer(s) by full name
  def self.find_by_name(name)
    Customer.all.select do |customer|
      customer.full_name.upcase == name.upcase
    end
  end

  # matches specific customer(s) by first name
  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name.upcase == name.upcase
    end
  end

  # returns all customer names
  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end
