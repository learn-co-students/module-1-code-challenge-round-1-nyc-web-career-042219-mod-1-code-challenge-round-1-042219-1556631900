class Customer

  @@all = []

  def self.all
    @@all
  end

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
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    # all reviews made by this customer instance
    Review.all.select { |review| review.customer == self }
  end

  def num_reviews
    self.reviews.size
  end

  def restaurants
    self.reviews.map { |review| review.restaurant }.uniq
  end

  def self.find_by_name(name)
    self.all.find { |customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map { |customer| customer.full_name}
  end

end
