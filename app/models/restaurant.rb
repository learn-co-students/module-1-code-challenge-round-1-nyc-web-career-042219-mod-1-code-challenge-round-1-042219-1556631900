class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#Returns a unique list of all customers who have reviewed a particular restaurant

  def customers
    Review.all select do |rest|
      binding.pry
      rest.restaurant == self
    end.map do |rest|
      rest.customer
    end.uniq
  end

  def reviews
    Review.all.select do |rest|
    rest.restaurant == self
  end.map do |rest|
    rest.content
    end
  end


  def average_star_rating
    counter = 0
    Review.all.select do |rest|
    rest.restaurant == self
  end.map do |rest|
    rest.rating
  end.inject(0.0) { |sum, el| sum + el } / arr.size
  end

  def longest_review
    Review.all.select do |rest|
    rest.restaurant == self
    end.map do |cont|
    cont.content
  end..max_by { |x, y| x.length <=> y.lenght}
  end

end
