class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end
  
  def num_reviews
    all_reviews = self.reviews
    all_reviews.length
  end

  def restaurants
    all_reviews = self.reviews
    all_reviews.map {|review| review.restaurant}
  end

  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.full_name}
  end
end
