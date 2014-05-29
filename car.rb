class Car 

	def initialize 
		puts "the initialize method is running automatically"
	end
	def get_info(my_car)
		@get_info = my_car
		@fuel=10
		@distance=0
		Kernel.puts("I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons left.")
end
	def drive(miles_driven)
		if (miles_driven <= 100)
			Kernel.puts "You're fine on gas for now!"
		else (miles_driven >= 101) 
			Kernel.puts "You might want to fill up soon!"
		end
		@distance=miles_driven
		
		# @distance=miles_driven
		# @fuel=20
		# Kernel.puts("I'm a car! I have now driven #{@distance} miles and have #{@fuel} left in my tank.")
end
end

c = Car.new
car_a= Car.new
car_b=Car.new
# c.get_info(2)
car_a.drive(10)
car_b.drive(20)
car_b.drive(105)
car_b.drive(200)




