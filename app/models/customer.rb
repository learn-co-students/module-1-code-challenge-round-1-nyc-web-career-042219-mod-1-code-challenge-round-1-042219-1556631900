class Customer
  @@all = []

  # @return [Array]
  # Retreive @@all
  def self.all
    @@all
  end

  # @return [Customer]
  # Retrieve first instance of Customer that matches name
  def self.find_by_name(name)
    all.find { |customer| customer.full_name == name }
  end

  # @return [Array]
  # Array of customer objects whose #first_name == name
  def self.find_all_by_first_name(name)
    all.select { |customer| customer.first_name == name }
  end

  # @return [Array]
  # Array of all #full_name for every instance of Customer
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

  # @return [Review]
  # creates an instance of review and associates it with self
  def customer_add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  # @return [Integer]
  # Number of reviews
  def num_reviews
    retrieve_reviews.length
  end

  # @return [Array]
  # Array of Restaurant Objects
  def restaurants
    retrieve_reviews.select(&:restaurant).uniq
  end

  private

  def retrieve_reviews
    Review.all.select { |review| review.customer == self }
  end

end
