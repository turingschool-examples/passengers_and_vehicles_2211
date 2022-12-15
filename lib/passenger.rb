class Passenger
    attr_reader :name, :age
    def initialize(name)
        @name = name["name"]
        @age = age["age"]
    end

    def adult?(age)
        if @age <= 18
            false
        else
            true
        end
    end

    def driver?
        
    end

end