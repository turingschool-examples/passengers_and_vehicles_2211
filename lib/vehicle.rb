class Vehicle 
	attr_reader :year,
							:make,
							:model
							
	def initialize(year, make, model)
		@year = year
		@make = make
		@model = model
		@speeding = false
		@passengers = []
		@num_adults = 0
	end

	def speeding?
		@speeding
	end

	def speed
		@speeding = true
	end

	def passengers
		@passengers
	end

	def add_passenger(passenger)
		@num_adults = 0
		@passengers << passenger
		@passengers.map do |passenger|
			if passenger.adult? == true
		 		@num_adults += 1
			end
		end
	end

	def num_adults
		@num_adults
	end
end