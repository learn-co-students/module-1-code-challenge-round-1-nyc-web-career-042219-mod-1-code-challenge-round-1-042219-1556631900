#JOIN TABLE
class Review
attr_reader :customer, :restaurant, :content, :rating
@@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    #
    @@all << self
  end


#INSTANCE METHODS

  def customer
#there are many reviews
#so, r1.customer should return the customer Obj. for that specific review

  end


#CLASS METHODS
  def self.all
    @@all
  end


end
