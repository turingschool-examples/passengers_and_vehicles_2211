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

	def list_all_attendees_by_name
		attendees.map {|attendee| attendee.name}.sort
	end

	def list_of_minors_by_name
    attendees.select {|attendee| !attendee.adult?}.map do |minor| 
			minor.name
		end.sort
  end

	def list_of_adults_by_name
    attendees.select {|attendee| attendee.adult?}.map do |adult| 
			adult.name
		end.sort
  end

	def attendees
    @vehicles_entered.flat_map {|vehicle| vehicle.passengers}
  end

end