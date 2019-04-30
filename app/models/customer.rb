class Customer
  attr_reader :first_name, :last_name
  @@all=[]


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select do |rev|
      rev.customer == self
    end.count
  end

  def restaurants
    all_rev =Review.all.select do |rev|
      rev.customer == self
    end
    all_rev.map do |rev|
      rev.restaurant
    end.uniq
  end

  def self.find_by_name(full_name)
    name = full_name.split(" ")
    first = name[0]
    last = name[1]
    Review.all.find do |rev|
      rev.customer.first_name == first && rev.customer.last_name == last
    end
  end

  def self.find_all_by_first_name(name)
    first = full_name.split(" ")[0]
    Review.all.select do |rev|
      rev.customer.first_name == first
    end
  end

  def self.all_names
    Review.all.map do |rev|
      rev.customer.first_name
    end
  end

end
