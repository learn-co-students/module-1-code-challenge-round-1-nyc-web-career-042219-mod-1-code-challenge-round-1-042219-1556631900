class Restaurant

    @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  # Instance Methods

def costumer_review
    costumers.map do |review|
       review.costumers
   end.uniq
# use helper metho reviews
  #  self.reviews.map do |review|
  #     review.costumers
  # end.uniq

#
def reviews
    Review.all.select do |review|
        review.restaurant == self
end
# (i think this is right,
# but i commented out to do pry, but forgot to comment back and forgot about this)

# def average_star_rating
    # sum= 0
    # star_rating = Review.all.each {|stars| sum += stars.rating}
    # sum/star_rating.length
# end

# def longest_review
#     (going through review and getting content)
#     (going through content and checking max by length )

#     arr = self.reviews.map {|review| review.content}
#     arr.max_by {|content| content.length}
#
#     end

  # Class Methods

  def self.all
      @@all
  end

  def self.find_by_name(name)
      name.name == restaurant.name
      # Restaurant.all.select {|name| name.restaurant == name}
end
end
