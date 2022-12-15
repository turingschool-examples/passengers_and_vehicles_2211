require "./lib/passenger"
require "./lib/vehicle"

class Park
    attr_reader :name,
                :admission_price,
                :vehicles,
                :passengers,
                :total_revnue

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
        @total_revnue = 0.0
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle

        vehicle.passengers.each do |passenger|
            @passengers << passenger
        end
    end

    def all_vehciles
        list = []
        if @vehicles == []
            return "There are no vehicles in #{@name} park."
        else
            @vehicles.each do |vehicle|
                list << vehicle.full_title
            end

            return list.join("\n")
        end
    end

    def all_passengers
        list = []
        if @passengers == []
            return "There are no passengers in #{@name} park."
        else
            @passengers.each do |passenger|
                list << passenger.name
            end

            return list.join("\n")
        end
    end

    def total_revenue_made
        @total_revnue = 0.0
        total_adults = 0
        @vehicles.each do |vehicle|
            total_adults += vehicle.num_adults
        end
        @total_revnue = total_adults * @admission_price
    end

    def money_today
        total_revenue_made

        if @total_revnue == 0.0
            "We made no money today."
        else
            "$#{@total_revnue}"
        end
    end

    def all_patrons_alphabetized
        method = all_passengers
        unsorted = []

        if method == "There are no passengers in #{@name} park."
            return "There are no patrons in #{@name} park."
        else
            @passengers.each do |passenger|
                unsorted << passenger.name
            end
            sorted = unsorted.sort

            return sorted.join("\n")
        end
    end

    def all_minor_patrons_alphabetized
        method = all_passengers
        unsorted = []

        if method == "There are no passengers in #{@name} park."
            return "There are no patrons in #{@name} park."
        else
            unsorted << @passengers.find_all {|passenger| passenger.adult? == false}

            flat_unsorted = unsorted.flatten

            if flat_unsorted == []
                return "There are no minors in #{@name} park."
            else
                flat_unsorted

                #return flat_sorted.join("\n")
            end
        end
    end
end