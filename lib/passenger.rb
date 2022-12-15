class Passenger
      attr_reader :name, 
                  :age
  def initialize(information)
    @name = information["name"]
    @age = information["age"]
    @can_drive = false 
    
  end

  def adult? 
    if @age >= 18 
      @adult = true 
      else @adult = false
    end
  return @adult
  end

  def driver? 
    @can_drive
  end

  def drive
    @can_drive = true
  end

end