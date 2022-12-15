class Passenger
    attr_reader :info_hash,
                :name,
                :age,
                :driving

    def initialize(info_hash)
        @info_hash = info_hash
        @name = info_hash["name"]
        @age = info_hash["age"]
        @driving = false
    end

    def adult?
        @age >= 18
    end

    def driver?
        @driving
    end

    def drive
        @driving = true
    end
end