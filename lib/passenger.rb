class Passenger

    attr_reader :name, :age

    def initialize(info)
        @name = info["name"]
        @age = info["age"]
        @driver = false 
    end

    def adult?
        @age > 17
    end

    def driver 
        @driver = true 
    end

    def driver?
        @driver
    end

end