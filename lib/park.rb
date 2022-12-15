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

	def passengers_in_park
		park_passengers = []
		@vehicles_in_park.each do |vehicle|
			vehicle.passengers.each do |passenger|
				park_passengers << passenger
			end
		end
		park_passengers
	end
	
	def calculate_revenue
		@vehicles_in_park.each do |vehicle|
			vehicle.passengers.each do |passenger|
			@revenue << @admission_price if passenger.adult?
			end
		end
		@revenue.reduce(:+)
	end

	def list_of_attendees
		attendee_list = []
		passengers_in_park.each do |passenger|
			attendee_list << passenger.name
		end
		attendee_list.sort!
	end

	def list_of_minors
		minor_names = []
		passengers_in_park.each do |passenger|
			minor_names << passenger.name if passenger.adult? == false
		end
		alpha_minor_names = minor_names.sort!
	end

	def list_of_adults
		adult_names = []
		passengers_in_park.each do |passenger|
			adult_names << passenger.name if passenger.adult?
		end
		alpha_adult_names = adult_names.sort!
	end
end