require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

elliott = Customer.new("Elliott", "Feliciano")
amy = Customer.new("Amy", "Oussatcheva")

big_b = Restaurant.new("The Big B")
morandi = Restaurant.new("Morandi")

r1 = Review.new(elliott, morandi, "greate date night", 10)
r2 = Review.new(amy, big_b, "good for a quick bit and pint", 8)
r3 = Review.new(amy, morandi, "good italian food, but pricey", 7)

# elliott.add_review(big_b, "nothing to write home about", 4)
# morandi.reviews
# morandi.customers
# elliott.num_reviews
#amy.restaurants
# Restaurant.find_by_name("Morandi")
# Customer.find_by_name("Amy")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
