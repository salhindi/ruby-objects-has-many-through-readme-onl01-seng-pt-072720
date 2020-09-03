class Waiter
  attr_accessor :name, :experience
  
  @@all = []
  
  def initialize(name, experience)
    @name= name
    @experience= experience
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, customer, total, tip = 0)
    Meal.new(waiter, customer, total, tip)
  end

end