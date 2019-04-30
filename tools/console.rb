require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


tim = Customer.new("tim", "koar")
mike = Customer.new("mike", "kowalski")
shirley =  Customer.new("shirley", "braha")
matt = Customer.new("matt", "jones")
eddie = Customer.new("eddie", "jackson")

joes = Restaurant.new("joes")
peter_lugers = Restaurant.new("peter lugers")
bistro = Restaurant.new("bistro")

tims_review = Review.new("good", 3, tim, joes)
mikes_review = Review.new("great", 4, mike, peter_lugers)
shirley_review = Review.new("poor", 1, shirley, bistro)
matts_review = Review.new("average food", 2, matt, bistro)
eddies_review = Review.new("great atmo", 4, eddie, joes)












# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
