class Restaurant < ActiveRecord::Base
  has_many :customers, through: :reviews
  has_many :reviews

#   @@all = []
#
#   def self.all
#     @@all
#   end
#
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#
# #class methods
#
#
# def self.find_by_name(name)
#   Restaurant.all.select {|res| res.name == name}
# end
#
#
# #instance methods
#
# def reviews #helper code
#   Review.all.select {|review| review.restaurant == self}
# end
#
# def customers
#   self.reviews.map {|review| review.customer}.uniq
# end
#
# def average_star_rating
#   avg_arr = []
#   self.reviews.map do |review|
#     avg_arr << review.rating
#   end
#   avg_arr.sum/avg_arr.size
# end
#
# def average_star_rating
# reviews.map(&:rating).sum.to_f/reviews.size
# end
#
# def longest_review
#   longest = 0
#   longest_review = nil
#   self.reviews.each do |review|
#   if  review.content.length > longest
#     longest = review.content.length
#     longest_review = review.content
# end
# end
# return longest_review
# end

end
