class Passenger
	attr_reader :name,
							:age
							

	def initialize(info)
		@name = info[:name]
		@age = info[:age]
		
		@driver = false
	end

	def adult?
		if age >= 18
			adult = true
		else
			false
		end
	end

	def driver?
		@driver
	end

	def drive
		@driver = true
	end
end
		