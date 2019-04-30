class Customer
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
    all.select { |customer| customer.first_name == name }
  end

  def self.all_names
    all.map(&:full_name)
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

  def customer_add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    retrieve_reviews.length
  end

  def restaurants
    retrieve_reviews.select(&:restaurant).uniq
  end

  private

  def retrieve_reviews
    Review.all.select { |review| review.customer == self }
  end

end
