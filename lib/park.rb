class Park
	attr_reader :name,
							:admission_price,
							:vehicles_entered

	def initialize(park_info)
		@name = park_info[:name]
		@admission_price = park_info[:admission_price]
		@vehicles_entered = []
	end


	def admit_vehicle(vehicle)
		@vehicles_entered << vehicle
	end

	def generate_revenue
		revenue = 0
		@vehicles_entered.map do |vehicle|
			revenue += vehicle.num_adults * @admission_price
		end
		revenue
	end

end