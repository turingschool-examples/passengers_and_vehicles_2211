class Passenger
    attr_reader

    def initialize(info)
        @name = info["name"]
        @age = info["age"]
    end
end