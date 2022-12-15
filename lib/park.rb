class Park
	attr_reader :name,
							:admission_price,
							:vehicles_in_park
							
	def initialize(name, admission)
		@name = name
		@admission_price = admission
		@vehicles_in_park = []
		@revenue = []
	end

	def add_vehicle(vehicle)
		@vehicles_in_park << vehicle
	end

	def passengers_in_park(vehicle)
		vehicle.passengers.count
	end
	
	def calculate_rev(vehicle)
		vehicle.passengers.each do |passenger|
			@revenue << @admission_price if passenger.adult?
		end
		@revenue.reduce(:+)
	end

	def list_of_attendees(vehicle)
		attendee_names = []
		vehicle.passengers.each do |passenger|
			attendee_names << passenger.name
		end
		alphabetical_names = attendee_names.sort!
	end
end