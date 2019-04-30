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

  def self.find_by_name(name)
    @@all.find(name)
    binding.pry
  end

  # def customers
  #   uniq_list = Review.all.select {|review| review.customer == self}
  #   binding.pry
  # end

end
