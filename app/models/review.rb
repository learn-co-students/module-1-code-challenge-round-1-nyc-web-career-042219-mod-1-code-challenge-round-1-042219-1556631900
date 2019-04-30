# Joint table
# accespts two other instances initialize customer, restaurant

class Review

    @@all = []

    attr_reader :costumer, :restaurant
    attr_accessor :content, :rating

    def initialize(costumer, restaurant, content, rating)
        @costumer = costumer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self

    end
    # Instance Methods





    # Class Methods
    def self.all
        @@all
    end

end
