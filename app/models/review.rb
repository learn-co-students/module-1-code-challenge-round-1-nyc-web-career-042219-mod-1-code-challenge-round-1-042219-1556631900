class Review

attr_reader :customer, :restaurant, :content, :rating, :patron, :score, :words

  @@all = []


def self.all
  @@all
end


def initialize(customer, restaurant, content, rating)
  @customer = customer
  @restaurant = restaurant
  @content = content
  @rating = rating
  @@all << self
  @patron = customer
  @score = rating
  @words = content
end

def customer
  self.patron
end


def rating
  self.score
end

def content
  self.words
end




end
