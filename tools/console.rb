require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

palo = Restaurant.new("Palo")
hermanos = Restaurant.new("Hermanos")

adam = Customer.new("Adam", "Robinson")
gabi = Customer.new("Gabi", "Corey")

great = Review.new(gabi, palo, "amazing", 10)
good = Review.new(gabi, hermanos, "good", 7)
real_good = Review.new(adam, palo, "also amazing", 9)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
