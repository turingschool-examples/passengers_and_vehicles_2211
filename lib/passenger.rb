class Passenger

  attr :name,
       :age

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
  end

  def adult?
    if age > 17
      true
    else
      false
    end
  end

    def driver?
      if @drive == true
        true
      else
        false
      end
    end

    def drive
      @drive = true
    end
end