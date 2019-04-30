class Review

attr_reader :restaurant, :customer  #these attributes should not be changed after
#initialization so they are only reader
attr_accessor :rating, :content #these attributes did not specify if they can be changed
#therefore I assumed that these aattributes might want to be changed in future

@@all = []

  def initialize(restaurant, customer, rating, content)
    @restaurant = restaurant
    @customer = customer
    @rating = rating #assuming that the rating is given 1-5
    @content = content
    @@all << self
  end


#CLASS METHODS
  def self.all
    @@all

  end

end
