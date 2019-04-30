class Restaurant
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all <<self
  end

  def self.all
    @@all
  end

  def customer
    all_rev =Review.all.select do |rev|
      rev.restaurant == self
    end
    all_rev.map do |rev|
      rev.customer
    end.uniq
  end

  def reviews
    all_rev =Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def average_star_rating
    amount = self.reviews.count
    star = self.reviews.map do |rev|
      rev.rating
    end.sum
    star/amount.to_f
  end

  def longest_review
    self.reviews.max_by(1) do |rev|
      rev.content.length
    end
  end

  def self.find_all_by_name(name)
    Review.all.find do |rev|
      rev.restaurant.name == name
    end.restaurant
  end

end
