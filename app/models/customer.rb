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

  def add_review(r_object, content, rating)
    Review.new(self, r_object, content, rating)
  end

  def helper_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    helper_reviews.count
  end

  def restaurants
    helper_reviews.map do |review|
      review.restaurant
    end.uniq
  end


  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end


  def self.find_all_by_first_name(name)
    self.all.find do |customer|
      customer.first_name == name
    end
  end


  def self.all_names
    Review.all.map do |review|
      first = review.customer.first_name
      last = review.customer.last_name
      [first, last].join(" ")
    end
  end


  def self.all
    @@all
  end

end
