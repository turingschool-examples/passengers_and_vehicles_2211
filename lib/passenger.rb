class Passenger
    attr_reader :name,
                :age,
                :driving

    def initialize(attributes)
        @name = attributes["name"]
        @age = attributes["age"]
        @driving = false
    end

    def adult?
        if @age >= 18
            return true
        else
            return false
        end
    end

    def driver?
        return driving
    end

    def drive
        @driving = true
    end
end