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

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    num_reviews.map {|review| review.restaurant}.uniq
  end


#CLASS METHODS

def self.all
  @@all
end

def self.find_by_name(full_name)
  Review.all.find {|review| }
  end

def self.find_all_by_first_name(name)
end

def self.all_names
end

end
