require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
amy= Customer.new("Amy","Chen")
mark=Customer.new("Mark", "Gore")
andrea=Customer.new("Andrea","Chow")
john=Customer.new("John", "Barron")
omar=Customer.new("Omar", "Gee")

yips=Restaurant.new("Yips")
halal=Restaurant.new("Halal Guys")
aroma=Restaurant.new("Aroma")
gfg=Restaurant.new("GFG")

omar.add_review(yips,"good for fidi", 3)
omar.add_review(aroma,"worse than sbux", 1)
amy.add_review(yips, "beats upstate", 4)
mark.add_review(yips, "inconsistent", 2)
mark.add_review(halal, "best ever", 5)
mark.add_review(aroma,"fake mediterranean",1)
mark.add_review(yips, "still inconsistent",3)

puts "#{omar.full_name} did #{omar.num_reviews} reviews"


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
