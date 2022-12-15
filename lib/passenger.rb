class Passenger
  attr_reader :name,
              :age

  def initialize(attributes)
    @name  = attributes[:name]
    @age   = attributes[:age]
    @drive = false
  end

  def adult?
    @age > 17
  end

  def drive
    @drive = true
  end

  def driver?
    @drive
  end
end