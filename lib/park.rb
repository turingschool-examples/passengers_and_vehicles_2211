class Park
    attr_reader :name, 
                :admission, 
                :vehicles_in_park, 
                :revenue,
                :patrons
    def initialize(name, admission)
        @name = name
        @admission = admission
        @vehicles_in_park = []
        @revenue = 0
    end

    def add_vehicle(vehicle)
        @vehicles_in_park << vehicle
        
    end

    def list_passengers
        vehicles_in_park.map do |vehicle|
            vehicle.passengers.map do |passenger|
                passenger
            end
        end.flatten
    end

    def charge
        @revenue += @admission
    end

    def list_patrons
        list_passengers.sort
    end
    # def add_patron(patron)
    #     @patrons << patron
    # end

    # def list_patrons
    #     patrons.map do |patron|
    #         patron
    #     end
    # end

end