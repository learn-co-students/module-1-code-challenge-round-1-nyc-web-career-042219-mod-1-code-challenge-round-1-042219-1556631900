class Customer
  attr_reader :first_name, :last_name
  @@all = []
  @@all_names = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @@all_names << "#{first_name} #{last_name}"
  end

  def full_name
    @@all_names << "#{first_name} #{last_name}"
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
    #use of .all_names to find the full_name of a customer.
    #use the full_name to return (find) the first customer whose full name matches to itself
    self.all_names.find do |name|
      name.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.find do |customer|
      customer.first_name == name
    end
  end


  def self.all
    @@all
  end

  def self.all_names
    @@all_names
  end


end
