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
		list = patrons.sort_by{|patron| patron.name}
		list
	end

	def list_patrons
end