class Park
    attr_reader :name,
                :admission_price
                
    def initialize(name, admission)
        @name = name
        @admission_price = admission
    end
end