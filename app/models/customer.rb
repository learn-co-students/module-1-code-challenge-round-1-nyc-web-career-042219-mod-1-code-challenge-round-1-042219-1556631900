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
    fullname = "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    restaurants = Review.all.select {|review| review.restaurant == self}
    restuarants.uniq
  end

  def self.find_by_name(name)
    @@all.find(name)
  end

  def self.find_all_by_first_name(name)
  end

  def self.all_names
  end
end
