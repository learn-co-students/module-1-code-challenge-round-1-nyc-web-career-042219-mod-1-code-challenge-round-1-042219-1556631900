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

end
#
# def reviews
#     Review.all.select do |review|
#         review.restaurant == self
# end



  # Class Methods

  def self.all
      @@all
  end

  def self.find_by_name(name)
      name.name == restaurant.name
end
