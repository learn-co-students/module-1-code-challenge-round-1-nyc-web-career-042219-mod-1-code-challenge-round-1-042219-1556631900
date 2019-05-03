adam = Customer.find_or_create_by(first_name: "adam",last_name: "next to me")
zach = Customer.find_or_create_by(first_name: "zach", last_name: "cat")
augustus = Customer.find_or_create_by(first_name: "augustus", last_name: "kirby")
other_adam = Customer.find_or_create_by(first_name: "adam", last_name: "other")
#
jean = Restaurant.find_or_create_by(name: "jean geogre")
mcd = Restaurant.find_or_create_by(name: "mcdonalds")
kfc = Restaurant.find_or_create_by(name: "kentucky friend chicken")

kfc_review_adam = Review.find_or_create_by(customer: adam, restaurant: kfc, content: "good", rating: 3)
kfc_review_zach = Review.find_or_create_by(customer: zach, restaurant: kfc, content: "bacon chick, yum", rating: 5)

#
# zach.add_review(restaurant: kfc, content: "yum", rating: 5)
# adam.add_review(restaurant: mcd, content: "those fries yo", rating: 5)
# adam.add_review(jean, "NO BACON ON THE SIDE I TOLD THEM OVER AND OVER AGAIN", 1)
# adam.add_review(jean, "much better I'll give them a 400% increase", 4)
# zach.add_review(jean, "needs more bacon on the side", 3)
# zach.add_review(mcd, "not as good as the KING, you know who I am talking about that dude is the bomb! thats why they call him the king not elvis anymore", 1)
