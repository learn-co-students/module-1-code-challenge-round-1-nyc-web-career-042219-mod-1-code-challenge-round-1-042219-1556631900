require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#CUSTOMER
jake = Customer.new("Jake", "Lovitz")
squidward = Customer.new("Squidward", "Tentacles")
jake_second = Customer.new("Jake", "The Second")


#RESTARAUNT
krab = Restaurant.new("Krusty Krab")
king = Restaurant.new("Burger King")

#REVIEW
jake_one = Review.new(jake, krab, "lovely", 5)
squidward_one = Review.new(squidward, krab, "awful", 1)
jake_two = Review.new(jake, king, "decent shakes I guess", 2)
jake_three = Review.new(jake, krab, "No pickles this time!", 4)
squidward_two = Review.new(squidward, krab, "I hate it here", -1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
