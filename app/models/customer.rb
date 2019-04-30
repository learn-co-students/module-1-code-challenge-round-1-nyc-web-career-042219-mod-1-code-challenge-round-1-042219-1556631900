class Customer

    @@all = []

  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


# Instance Methods
def self.add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
    # new_r
# no self.
end

#  def restaurants
#  res_rev= Review.all.select {|review| review.restaurant == self }
    # res_rev.map {|review| review.customer == self}.uniq
# end


def num_reviews
    reviews.count do |review|
    # num_rev = Reviews.all.select {|review| review.costumer == self}
    # num_rev.count
    
end





# Class Methods

  def self.all
      @@all
  end

  def self.all_names
      Costumer.all.map do |name|
          name.full_name
end


# def self.find_by_name(name)
#     Costumer.all.select.do |full_name|
#     full_name.full_name == name
# end

        def self.find_all_by_first_name(name)
            @@all.all.select do |first_name, last_name|
            first_name.full_name == name
        end
        # firt_name.full_name == name

end
