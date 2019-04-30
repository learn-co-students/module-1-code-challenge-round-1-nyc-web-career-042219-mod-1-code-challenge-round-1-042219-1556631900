require 'pry'
class Customer
  attr_reader :first_name, :last_name

  @@all = []

def self.all
  @@all
end


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

#class methods



def self.all_names
  all_the_names = []
  self.all.each do |customer|
  all_the_names <<  "#{customer.first_name} #{customer.last_name}"
  end
  all_the_names
end

def self.find_all_by_first_name(firstname)
  self.all.select {|customer| customer.first_name == firstname}
end


def self.find_by_name(name)
  self.all.each do |customer|
    if name == "#{customer.first_name} #{customer.last_name}"
      return customer
    end
end
end
##instance methods

def add_review(restaurant, content, rating)
  Review.new(self, restaurant, content, rating)
end

def my_reviews #helper method
  Review.all.select {|review| review.customer == self}
end

def num_reviews
self.my_reviews.size
end

def restaurants
  self.my_reviews.map {|review| review.restaurant}.uniq
end



end
