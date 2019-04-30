require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ashley = Customer.new("Ashley", "Westcott")
bob = Customer.new("Bob", "Jones")
jen = Customer.new("Jen", "Smith")

chilis = Restaurant.new("Chilis")
macdonalds = Restaurant.new("Macdonalds")
taco_bell = Restaurant.new("Taco Bell")

review1 = Review.new(ashley, chilis, "good", 5)
review2 = Review.new(ashley, macdonalds, "good", 4)
review3 = Review.new(ashley, taco_bell, "bad", 2)
review4 = Review.new(bob, chilis, "good", 1)
review5 = Review.new(bob, macdonalds, "bad", 2)
review6 = Review.new(bob, taco_bell, "good", 2)
review7 = Review.new(jen, chilis, "good", 2)
review8 = Review.new(jen, macdonalds, "bad", 5)
review9 = Review.new(jen, taco_bell, "good", 5)

Restaurant.find_by_name(chilis)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
