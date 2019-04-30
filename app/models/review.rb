class Review

  attr_reader :customer, :restaurant, :content, :rating
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating #I was unsure if I should code the rating to not exceed an integer of 5. If so, I would use my below method #rating_check (commented out) to evaluate the rating. I would need create an attr_accessor macro to allow me to modify the @rating variable. I would also run this method in my initialize method for the Review class.
    @@all << self
  end

  def self.all
    @@all
  end

  # def rating_check
  #   if self.rating > 5
  #     self.rating = 5
  #   elsif self.rating < 1
  #     self.rating = 1
  #   else
  #     self.rating = self.rating
  #   end
  # end

end
