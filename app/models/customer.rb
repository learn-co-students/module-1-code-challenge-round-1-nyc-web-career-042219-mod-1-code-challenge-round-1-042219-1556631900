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
    new_review = Review.new(self, restaurant, content, rating)
    new_r

end



def num_reviews
    reviews.count do |review|
    end
end





# Class Methods

  def self.all
      @@all
  end
  def self.all_names
      Costumer.all.map do |name|
          name.full_name
  end
    end
        def self.find_all_by_first_name(name)
            @@all.select.do |first_name, last_name|
            first_name.first_name == name
        end
    end
end
