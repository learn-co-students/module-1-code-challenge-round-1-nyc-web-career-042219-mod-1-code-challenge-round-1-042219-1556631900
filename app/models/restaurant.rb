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

  def customers(name, restaurant)
    name.select do |name|
      name.review = name
  end




  end

  def average_star_rating(rating)

  end

  def longest_review(content)

  end
end
