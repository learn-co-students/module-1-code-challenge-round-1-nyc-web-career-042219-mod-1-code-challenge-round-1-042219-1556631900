require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Customer.new('john', 'doe')
james = Customer.new('james', 'smith')
john2 = Customer.new('john', 'smith')

apple = Restaurant.new('Applebees')
fridays = Restaurant.new('TGI Fridays')

john_review_1 = Review.new(apple, 'A simple string', 5, john)
james_review_1 = Review.new(apple, 'A bit of a longer string here.', 1, james)
john2_review_2 = Review.new(fridays, '^_^', 5, john2)

# These work
# p Customer.all.length
# p Review.all.length
# p Restaurant.all.length

# These work
# p john.full_name # => "john doe"
# p john.num_reviews # => 1
# p john.restaurants # => Review obj

# Works
# p Customer.find_by_name('john doe')
# p Customer.find_all_by_first_name('john')
# p Customer.all_names

# Works
# p Restaurant.find_by_name('Applebees')
# p apple.customers
# p apple.average_star_rating
# p apple.reviews
# p apple.longest_review

# Works
# p john_review_1.customer
# p john_review_1.restaurant
# p john_review_1.content
# p john_review_1.rating

# binding.pry

0 #leave this here to ensure binding.pry isn't the last line