require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
bob_saget = Customer.new("Bob", "Saget")
jim_morrison = Customer.new("Jim", "Morrison")
ben_simmons = Customer.new("Ben", "Simmons")
jimmy_butler = Customer.new("Jimmy", "Butler")
jimmy_hendrix = Customer.new("Jimmy", "Hendrix")

bdubs = Restaurant.new("Buffalo Wild Wings")
kfc = Restaurant.new("Kentucky Fried Chicken")
popeyes = Restaurant.new("Popeyes")

bob_saget.add_review(bdubs, "Worst place ever.", 3)
jim_morrison.add_review(bdubs, "terrible place, takes 1 hour to make 6 wings", 2)
ben_simmons.add_review(kfc, "KFC bruh", 10)
ben_simmons.add_review(popeyes, "not better than kfc tho", 7)
jimmy_butler.add_review(popeyes, "popeyes bruh", 10)
jimmy_butler.add_review(kfc, "its aii", 7)
jimmy_hendrix.add_review(bdubs, "trash", 3)

bdubs_rating = bdubs.average_star_rating
bdubs_review = bdubs.longest_review

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
