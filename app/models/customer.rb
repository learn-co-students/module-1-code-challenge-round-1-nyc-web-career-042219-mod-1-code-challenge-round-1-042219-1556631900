class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    revuearray=Review.all.select do |review|
      review.customer==self
    end
    revuearray.length

  end

  def restaurants
    restarray=Review.all.map do |review|
      review.restaurant if review.customer==self
    end.compact
    restarray.uniq
  end

  def find_by_name(name)
    self.all.select {|customer| customer.full_name == name}.first

  end

  def find_all_by_first_name

  # self.all select the customers whose first name matches the first name
  #  into
end
end
