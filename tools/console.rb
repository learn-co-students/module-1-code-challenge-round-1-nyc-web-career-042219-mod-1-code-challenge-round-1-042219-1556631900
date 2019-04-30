require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer
christian = Customer.new("Christian","Duncan")
ricky = Customer.new("Ricky","Bobby")

#restaurant
carbone = Restaurant.new("Carbone")
deli = Restaurant.new("Deli")

#review
carbone_review = Review.new(christian,carbone,"Very Good",5)
carbone_review2 = Review.new(christian,carbone,"Good",4)
carbone_review3 = Review.new(ricky,carbone,"not Goodat all blah blah blah",3)
deli_review1 = Review.new(ricky,deli,"not Good",1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
