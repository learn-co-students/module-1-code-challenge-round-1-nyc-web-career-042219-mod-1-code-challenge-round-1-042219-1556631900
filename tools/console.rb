require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cippolini = Restaurant.new("Cippolini")
toku = Restaurant.new("Toku")
ciprioni = Restaurant.new("Ciprioni")

jennifer = Customer.new("Jennifer", "Oh")
matthew = Customer.new("Matthew", "Poon")
laura = Customer.new("Laura", "Green")

happy = Review.new(laura, toku, "food is great", 5)
sad = Review.new(laura, ciprioni, "service sucks", 0)
excited = Review.new(matthew, toku, "food is good, but service sucks", 3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
