require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tgif = Restaurant.new("TGIF")
chipotle = Restaurant.new("Chipotle")

sam = Customer.new("Sam", "Levine")
sally = Customer.new("Sally", "Gregory")
samg = Customer.new("Sam", "Gregory")

r1= Review.new(tgif, sally, 3, "It was okay")


r2 = sam.add_review(chipotle, "Loved it", 5)
r3 = sally.add_review(tgif, "was better this time", 4)
r4 = sam.add_review(tgif, "not my fav", 2)
r5 = samg.add_review(chipotle, "Loved the burrito, it was perfect", 5)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Customer.find_by_name("Sam Levine")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
