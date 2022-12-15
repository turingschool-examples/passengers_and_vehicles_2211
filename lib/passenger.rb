class Passenger
    attr_reader :name, :age

    def initialize(passenger_info)
        @name = passenger_info["name"]
        @age = passenger_info["age"]
        @adult = true
        @driver = false
    end

    def adult?
        return false if @age < 18
        true
    end

    def driver?
        @driver
    end

    def drive
        @driver = true
    end
end