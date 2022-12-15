class Passenger
  attr_reader :name, :age
  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @adult = true
    @driver = false
  end

  def adult?
    if @age >= 18
      @adult
    else
      @adult = false 
    end
  end

  def driver?
    @driver
  end

  def drive
  @driver = true
  end
end

