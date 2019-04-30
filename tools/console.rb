require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# costumer (first_name, last_name)
pamch = Customer.new("Pamyk", "Ch")
mjch = Customer.new("Mj", "Ch")

# Restaurant(name)
ayza = Restaurant.new("Ayza")
maro = Restaurant.new("Maro")
baro = Restaurant.new("Baro")

# review (costumer, restaurant, content, rating)

amazing = Review.new(mjch, ayza, "amazing", 5)
great = Review.new(pamch, maro, "great", 5)
ok = Review.new(mjch, baro, "ok", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
