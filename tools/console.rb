require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
gavin = Customer.new("Gavin", "OConnor")
won = Customer.new("Won", "Kim")
catherine = Customer.new("Catherine", "Batsoula")

metta = Restaurant.new("Metta")
frankies = Restaurant.new("Frankie's")
anselm = Restaurant.new("St. Anselm")
gersi = Restaurant.new("Gersi")

gavin.add_review("Frankie's", 4, "meatballs!")
catherine.add_review("Metta", 3, "meh-tta")
won.add_review("Gersi", 5, "Great!")
gavin.add_review("Pop's", 2, "always closed")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
