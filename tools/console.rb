require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


adam = Customer.new("adam", "next to me")
zach = Customer.new("zach", "cat")
augustus = Customer.new("augustus", "kirby")
other_adam = Customer.new("adam", "other")

jean = Restaurant.new("jean geogre")
mcd = Restaurant.new("mcdonalds")
kfc = Restaurant.new("kentucky friend chicken")

kfc_review_adam = Review.new(adam, kfc, "good", 3)
kfc_review_zach = Review.new(zach, kfc, "bacon chick, yum", 5)


augustus.add_review(kfc, "yum", 5)
augustus.add_review(mcd, "those fries yo", 5)
adam.add_review(jean, "NO BACON ON THE SIDE I TOLD THEM OVER AND OVER AGAIN", 1)
adam.add_review(jean, "much better I'll give them a 400% increase", 4)
zach.add_review(jean, "needs more bacon on the side", 3)
zach.add_review(mcd, "not as good as the KING, you know who I am talking about that dude is the bomb! thats why they call him the king not elvis anymore", 1)

jean.customers
jean.reviews

mcd.average_star_rating
mcd.reviews
mcd.longest_review

Customer.find_all_by_first_name("adam")
Customer.all_names
Customer.find_by_name("zach cat")


# copy paste the code bloew to test
#
# Restaurant.all
# Review.all
# Customer.all
#
# augustus.num_reviews
# augustus.my_reviews
# augustus.restaurant
# zach.my_reviews

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
