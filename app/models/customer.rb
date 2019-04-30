class Customer

  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end


  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)

  end


  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
    Review.all.select do |review|
      review.customer == self
    end.uniq
  end

  def self.all
    @@all
  end
#staill working on iterating through combined names
  def self.find_by_name(string)
    Customer.all.select do |cust|
      binding.pry
      cust.full_name == string
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end



end
