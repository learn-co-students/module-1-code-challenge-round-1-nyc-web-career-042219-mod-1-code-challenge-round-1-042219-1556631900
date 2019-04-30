class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end


  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(content, rating, restaurant)
    new_review = Review.new(content, rating, self, restaurant)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    my_reviews = self.num_reviews
    my_restaurants = my_reviews.select do |review|
      review.customer == self
    end
    my_restaurants
  end

  def self.find_by_name(first_name, last_name)
    Customer.all.find do |customer|
      customer.first_name && customer.last_name
    end
  end

  def self.find_all_by_first_name(first_name)
    Customer.all.find do |customer|
      customer.first_name
    end
  end
end
