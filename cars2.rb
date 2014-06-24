class Car

	def to_s 								#was get_info method
		"I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons left in my tank."
	end

	def initialize()       					# was setup method
		@fuel = 10
		@distance = 0
		puts "the initialize method is running automatically."
	end


	def drive (miles)  						# create a drive method which should
		if (@fuel - miles/20) >=0			# take an input for the # of miles driven. Change
			@distance += miles				# distance accordingly, & reduce the fuel at a rate of 20 m/gallon.
			@fuel -= miles/20
		else
			@distance += @fuel * 20
			@fuel = 0
			puts "You're out of gas. You need to fill up."
		end
	end									
											
		

	def fuel_up								# create a method called fuel_up
		gallons_needed = 10 - @fuel     	
		puts "To fill up your tank, you must pay $#{3.50 * gallons_needed}"
		@fuel = 10
	end										# that figures out how much gas you need in order
											# to reach a fuel tank at 10 gallons.
											# fill it up & print a message telling you how much it'll cost.
end											# costs of gas is 3.50


car_a=Car.new
car_b=Car.new
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(200)
car_b.drive(75)
puts car_a
puts car_b