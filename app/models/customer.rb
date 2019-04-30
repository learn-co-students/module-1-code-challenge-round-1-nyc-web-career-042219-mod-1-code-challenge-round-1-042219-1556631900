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

  def add_review(restaurant,content, rating)
    #initializes new review
    Review.new(restaurant, self, rating, content)
  end

  def reviews #helper method
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    #use #reviews to find all reviews by this customer, returns an array. get length of array
    reviews.length
  end

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq
  end



#CLASS METHODS
  def self.all
    @@all
  end

  def self.find_by_name(name)
    #split full name string to first and last name
    f_name = name.split[0]
    l_name = name.split[1]
    #find the customer whose first AND last name match what was given in argument
    Customer.all.find do |customer|
      customer.first_name == f_name && customer.last_name == l_name
    end
  end

  def self.find_all_by_first_name(name)
    #use select to find and return an array of all customers whose first name matches the name given
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    #use map to return @@all array with just the name
    #use given #full_name method to give string of first and last name
    Customer.all.map do |customer|
      customer.full_name
    end
  end
end
