require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

a = Customer.new("Alice", "Smith")
b = Customer.new("Bob", "Jones")
e = Customer.new("Alice", "Ebbs")

c = Restaurant.new("Chuck-E-Cheese\'s")
d = Restaurant.new("Denny\'s")

a.add_review(c, "Delicious.", 5)
b.add_review(c, "Great pizza.", 4)

f = b.add_review(d, "Bad eggs.", 1)
g = e.add_review(d, "There was a fly in my soup.", 3)


binding.pry
puts 'Huzzah' #leave this here to ensure binding.pry isn't the last line
