class Vehicle
    attr_reader :year, :make, :model

    def initialize(year, make, model)
        @year = year.to_i
        @make = make.to_s
        @model = model.to_s
    end
end
