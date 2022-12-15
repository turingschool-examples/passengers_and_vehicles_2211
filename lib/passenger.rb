class Passenger
    attr_reader :name, :age, :adult

    def initialize(info)
        @name = info["name"]
        @age = info["age"]
        @adult = adult
    end

    def adult?
        return true if age >= 18
        false
    end
end