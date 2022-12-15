class Park
  attr_reader :name, :admission_cost
  
  def initialize(name, admission_cost)
    @name = name
    @admission_cost = admission_cost
  end
end