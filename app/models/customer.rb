class Customer

  @@all = []

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    review = Review.new(self, restaurant, rating, content)
  end

  def find_reviews
    Review.all.select { |review| review.customer == self }
  end

  def num_reviews
    self.find_reviews.length
  end

  def restaurants
    self.find_reviews.map { |review| review.restaurant }.uniq
  end

  def self.find_by_name(customer_name)
    self.all.find { |customer| customer.full_name == customer_name }
  end

  def self.find_all_by_first_name(customer_name)
    self.all.select { |customer| customer.first_name == customer_name }
  end

  def self.all_names
    self.all.map { |customer| customer.full_name }
  end

  def self.all
    @@all
  end
end
