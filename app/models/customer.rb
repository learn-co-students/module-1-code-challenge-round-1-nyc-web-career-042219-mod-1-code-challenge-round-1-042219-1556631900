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

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    my_reviews.count
  end

  def restaurants
    my_reviews.map do |review|
      review.restaurant
    end
  end

  def self.find_by_name(name)
    Customer.all.select do |customer|
      customer.full_name.upcase == name.upcase
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name.upcase == name.upcase
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end
