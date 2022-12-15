class Park 
	attr_reader :name,
							:admission

	def initialize(details)
		@name = details[:name]
		@admission = details[:admission]
		@vehicles = []
		@revenue = 0
	end

	def vehicle_enter(vehicle)
		@vehicles << vehicle
		@revenue += admission
	end

	def vehicles
		@vehicles
	end

	def revenue
		@revenue
	end

	def patrons
		patrons =  []
		vehicles.each do |vehicle|
			vehicle.passengers.each do |passenger|
				patrons << passenger
			end
		end
		patrons
	end

	def list_patrons
		patrons.sort_by{|patron| patron.name}
	end

	def list_adults
		adults = []
		list_patrons.each do |passenger|
			if passenger.adult? == true
				adults << passenger
			else
			end
		end
		adults
	end

	def list_minors
		minors = []
		list_patrons.each do |passenger|
			if passenger.adult? == false
				minors << passenger
			else
			end
		end
		minors
	end
end