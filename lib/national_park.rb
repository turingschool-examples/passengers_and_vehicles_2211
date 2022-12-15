class NationalPark
  attr_reader :name,
              :admission_cost
  
  def initialize(name, cost)
    @name = name
    @admission_cost = cost
  end
end