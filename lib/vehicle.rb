class Vehicle
    attr_reader :year, :make, :model, :speeding

    def initialize(year, make, model)
        @year = year.to_i
        @make = make.to_s
        @model = model.to_s
        @speeding = false
    end

    def speed
        @speeding = true
    end

    def speeding?
        @speeding
    end

end
