class NationalPark
    attr_reader :name, 
                :admission_price,
                :vehicles_in_park

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_in_park = []
    end


end