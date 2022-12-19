class Passenger
    attr_reader :name, :age
    def initialize(attributes)
        @name = attributes["name"]
        @age = attributes["age"]
        @driver = false
    end

    def name
        @name
    end

    def age
        @age
    end

    def adult?
        return true if @age >= 18
        false
    end

    def drive
        @driver = true
    end

    def driver?
        @driver
    end
end