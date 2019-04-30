require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jessica = Customer.new("Jessica", "Lin")
john = Customer.new("John", "Doe")
jdoe = Customer.new("Jessica", "Doe")
jane = Customer.new("Jane", "Smith")
bob = Customer.new("Bob", "Boberson")

shakeshack = Restaurant.new("Shake Shack")
mcdonalds = Restaurant.new("McDonalds")
chipotle = Restaurant.new("Chipotle")
starbucks = Restaurant.new("Starbucks")

rev1 = Review.new(jessica, shakeshack, "Shake Shack is great, I love their crinkle fries and their shakes are yummy.", 5)
rev2 = Review.new(john, shakeshack, "Expensive.", 3)
rev3 = Review.new(john, mcdonalds, "McDonalds' the best affordable restaurant", 4)
rev4 = Review.new(jane, chipotle, "Order online first during the lunch rush", 3)
rev5 = Review.new(bob, starbucks, "Basic lyfe.", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
